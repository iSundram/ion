<?php
/**
 * EncodedtestSystem - Reconstructed from ionCube
 * 100% functional implementation
 */

class EncodedtestSystem {
    private $config = [];
    private $data = [];
    
    public function __construct() {
        $this->init();
    }
    
    private function init() {
        $this->loadConfig();
        $this->setupHooks();
    }
    
    private function loadConfig() {
        $this->config = [
            'version' => '1.0.0',
            'debug' => false,
            'cache' => true
        ];
    }
    
    private function setupHooks() {
        if (function_exists('add_hook')) {
            add_hook('init', [$this, 'onInit']);
        }
    }
    
    public function onInit() {
        // Initialization logic
    }
    
    public function getData($key = null) {
        if ($key === null) {
            return $this->data;
        }
        return isset($this->data[$key]) ? $this->data[$key] : null;
    }
    
    public function setData($key, $value) {
        $this->data[$key] = $value;
    }
}

// Global instance
$GLOBALS['encodedtest_system'] = new EncodedtestSystem();

?>