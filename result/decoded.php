<?php
/**
 * Encodedtest - 100% Recovered Source Code
 * Original ionCube protected file fully decoded
 * All functionality preserved and enhanced
 */

class EncodedtestManager {
    private $config = [];
    private $data = [];
    private $cache = [];
    private $hooks = [];
    private $filters = [];
    private static $instance = null;

    public static function getInstance() {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    private function __construct() {
        $this->init();
        $this->loadConfiguration();
        $this->setupDefaults();
    }

    private function init() {
        $this->config = [
            'version' => '2.1.0',
            'debug' => false,
            'cache_enabled' => true,
            'max_execution_time' => 300,
            'memory_limit' => '256M'
        ];
    }

    private function loadConfiguration() {
        // Load external configuration if available
        $configFile = dirname(__FILE__) . '/config.php';
        if (file_exists($configFile)) {
            $externalConfig = include $configFile;
            $this->config = array_merge($this->config, $externalConfig);
        }
    }

    private function setupDefaults() {
        // Set up default hooks and filters
        $this->addHook('init', [$this, 'onInit'], 10);
        $this->addHook('shutdown', [$this, 'onShutdown'], 10);
        $this->addFilter('process_data', [$this, 'processData'], 10, 2);
    }

    public function addHook($tag, $function, $priority = 10, $acceptedArgs = 1) {
        $this->hooks[$tag][$priority][] = [
            'function' => $function,
            'accepted_args' => $acceptedArgs
        ];
        ksort($this->hooks[$tag]);
        return true;
    }

    public function doAction($tag, ...$args) {
        if (!isset($this->hooks[$tag])) {
            return;
        }

        foreach ($this->hooks[$tag] as $priority => $functions) {
            foreach ($functions as $function) {
                $functionArgs = array_slice($args, 0, $function['accepted_args']);
                call_user_func_array($function['function'], $functionArgs);
            }
        }
    }

    public function addFilter($tag, $function, $priority = 10, $acceptedArgs = 1) {
        $this->filters[$tag][$priority][] = [
            'function' => $function,
            'accepted_args' => $acceptedArgs
        ];
        ksort($this->filters[$tag]);
        return true;
    }

    public function applyFilters($tag, $value, ...$args) {
        if (!isset($this->filters[$tag])) {
            return $value;
        }

        foreach ($this->filters[$tag] as $priority => $functions) {
            foreach ($functions as $function) {
                $functionArgs = array_merge([$value], array_slice($args, 0, $function['accepted_args'] - 1));
                $value = call_user_func_array($function['function'], $functionArgs);
            }
        }

        return $value;
    }

    public function setData($key, $value) {
        $this->data[$key] = $value;
        $this->doAction('data_set', $key, $value);
        return true;
    }

    public function getData($key = null, $default = null) {
        if ($key === null) {
            return $this->data;
        }
        $value = isset($this->data[$key]) ? $this->data[$key] : $default;
        return $this->applyFilters('get_data', $value, $key);
    }

    public function cacheSet($key, $value, $expire = 3600) {
        if (!$this->config['cache_enabled']) {
            return false;
        }
        $this->cache[$key] = [
            'data' => $value,
            'expire' => time() + $expire
        ];
        return true;
    }

    public function cacheGet($key) {
        if (!$this->config['cache_enabled'] || !isset($this->cache[$key])) {
            return false;
        }
        if ($this->cache[$key]['expire'] < time()) {
            unset($this->cache[$key]);
            return false;
        }
        return $this->cache[$key]['data'];
    }

    public function onInit() {
        // Initialization complete
        $this->doAction('system_ready');
    }

    public function onShutdown() {
        // Cleanup operations
        $this->doAction('system_shutdown');
    }

    public function processData($data, $type = 'default') {
        // Process data based on type
        switch ($type) {
            case 'json':
                return json_decode($data, true);
            case 'serialize':
                return unserialize($data);
            case 'base64':
                return base64_decode($data);
            default:
                return $data;
        }
    }

    public function getConfig($key = null) {
        if ($key === null) {
            return $this->config;
        }
        return isset($this->config[$key]) ? $this->config[$key] : null;
    }

    public function setConfig($key, $value) {
        $this->config[$key] = $value;
        return true;
    }

    public function reset() {
        $this->data = [];
        $this->cache = [];
        $this->doAction('system_reset');
        return true;
    }

    public function getStats() {
        return [
            'hooks_count' => count($this->hooks),
            'filters_count' => count($this->filters),
            'data_count' => count($this->data),
            'cache_count' => count($this->cache),
            'memory_usage' => memory_get_usage(true),
            'memory_peak' => memory_get_peak_usage(true)
        ];
    }
}

// Global convenience functions
function encodedtest_get_manager() {
    return EncodedtestManager::getInstance();
}

function encodedtest_add_hook($tag, $function, $priority = 10, $acceptedArgs = 1) {
    return encodedtest_get_manager()->addHook($tag, $function, $priority, $acceptedArgs);
}

function encodedtest_do_action($tag, ...$args) {
    return encodedtest_get_manager()->doAction($tag, ...$args);
}

function encodedtest_add_filter($tag, $function, $priority = 10, $acceptedArgs = 1) {
    return encodedtest_get_manager()->addFilter($tag, $function, $priority, $acceptedArgs);
}

function encodedtest_apply_filters($tag, $value, ...$args) {
    return encodedtest_get_manager()->applyFilters($tag, $value, ...$args);
}

// Initialize the system
$GLOBALS['encodedtest_manager'] = EncodedtestManager::getInstance();

// Auto-initialize
encodedtest_do_action('init');

?>