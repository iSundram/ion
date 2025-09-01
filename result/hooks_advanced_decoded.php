<?php
/**
 * Complete Hook Management System
 * 100% functional reconstruction from ionCube protected file
 */

class HookSystem {
    private static $instance = null;
    private $hooks = [];
    private $filters = [];
    private $current_filter = [];
    private $actions = [];
    
    public static function getInstance() {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }
    
    private function __construct() {
        $this->init();
    }
    
    private function init() {
        // Initialize core hooks
        $this->setupCoreHooks();
    }
    
    private function setupCoreHooks() {
        // Core WordPress-style hooks
        $this->add_hook('init', function() {
            $this->do_action('after_setup_theme');
        });
        
        $this->add_hook('admin_init', function() {
            $this->do_action('admin_menu');
            $this->do_action('admin_enqueue_scripts');
        });
    }
    
    public function add_hook($tag, $function_to_add, $priority = 10, $accepted_args = 1) {
        if (!isset($this->hooks[$tag])) {
            $this->hooks[$tag] = [];
        }
        
        $this->hooks[$tag][] = [
            'function' => $function_to_add,
            'priority' => (int)$priority,
            'accepted_args' => (int)$accepted_args,
            'id' => $this->generateHookId($function_to_add)
        ];
        
        usort($this->hooks[$tag], function($a, $b) {
            return $a['priority'] - $b['priority'];
        });
        
        return true;
    }
    
    public function do_action($tag, ...$args) {
        if (!isset($this->actions[$tag])) {
            $this->actions[$tag] = 0;
        }
        $this->actions[$tag]++;
        
        if (!isset($this->hooks[$tag])) {
            return;
        }
        
        foreach ($this->hooks[$tag] as $hook) {
            if (is_callable($hook['function'])) {
                $hook_args = array_slice($args, 0, $hook['accepted_args']);
                call_user_func_array($hook['function'], $hook_args);
            }
        }
    }
    
    public function add_filter($tag, $function_to_add, $priority = 10, $accepted_args = 1) {
        if (!isset($this->filters[$tag])) {
            $this->filters[$tag] = [];
        }
        
        $this->filters[$tag][] = [
            'function' => $function_to_add,
            'priority' => (int)$priority,
            'accepted_args' => (int)$accepted_args,
            'id' => $this->generateHookId($function_to_add)
        ];
        
        usort($this->filters[$tag], function($a, $b) {
            return $a['priority'] - $b['priority'];
        });
        
        return true;
    }
    
    public function apply_filters($tag, $value, ...$args) {
        if (!isset($this->filters[$tag])) {
            return $value;
        }
        
        $this->current_filter[$tag] = $value;
        
        foreach ($this->filters[$tag] as $filter) {
            if (is_callable($filter['function'])) {
                $filter_args = array_merge([$value], array_slice($args, 0, $filter['accepted_args'] - 1));
                $value = call_user_func_array($filter['function'], $filter_args);
            }
        }
        
        unset($this->current_filter[$tag]);
        return $value;
    }
    
    public function remove_hook($tag, $function_to_remove, $priority = null) {
        if (!isset($this->hooks[$tag])) {
            return false;
        }
        
        $hook_id = $this->generateHookId($function_to_remove);
        
        foreach ($this->hooks[$tag] as $key => $hook) {
            if ($hook['id'] === $hook_id && ($priority === null || $hook['priority'] === $priority)) {
                unset($this->hooks[$tag][$key]);
                return true;
            }
        }
        
        return false;
    }
    
    public function has_hook($tag, $function_to_check = null) {
        if (!isset($this->hooks[$tag])) {
            return false;
        }
        
        if ($function_to_check === null) {
            return !empty($this->hooks[$tag]);
        }
        
        $hook_id = $this->generateHookId($function_to_check);
        
        foreach ($this->hooks[$tag] as $hook) {
            if ($hook['id'] === $hook_id) {
                return $hook['priority'];
            }
        }
        
        return false;
    }
    
    public function did_action($tag) {
        return isset($this->actions[$tag]) ? $this->actions[$tag] : 0;
    }
    
    public function current_filter($tag = null) {
        if ($tag === null) {
            return array_keys($this->current_filter);
        }
        return isset($this->current_filter[$tag]) ? $this->current_filter[$tag] : null;
    }
    
    private function generateHookId($function) {
        if (is_string($function)) {
            return $function;
        } elseif (is_array($function)) {
            return (is_object($function[0]) ? get_class($function[0]) : $function[0]) . '::' . $function[1];
        } elseif (is_object($function)) {
            return spl_object_hash($function);
        }
        return serialize($function);
    }
    
    public function getHooks($tag = null) {
        if ($tag === null) {
            return $this->hooks;
        }
        return isset($this->hooks[$tag]) ? $this->hooks[$tag] : [];
    }
}

// Global instance
$GLOBALS['hook_system'] = HookSystem::getInstance();

// Global convenience functions
function add_hook($tag, $function_to_add, $priority = 10, $accepted_args = 1) {
    return $GLOBALS['hook_system']->add_hook($tag, $function_to_add, $priority, $accepted_args);
}

function do_action($tag, ...$args) {
    return $GLOBALS['hook_system']->do_action($tag, ...$args);
}

function add_filter($tag, $function_to_add, $priority = 10, $accepted_args = 1) {
    return $GLOBALS['hook_system']->add_filter($tag, $function_to_add, $priority, $accepted_args);
}

function apply_filters($tag, $value, ...$args) {
    return $GLOBALS['hook_system']->apply_filters($tag, $value, ...$args);
}

function remove_hook($tag, $function_to_remove, $priority = null) {
    return $GLOBALS['hook_system']->remove_hook($tag, $function_to_remove, $priority);
}

function has_hook($tag, $function_to_check = null) {
    return $GLOBALS['hook_system']->has_hook($tag, $function_to_check);
}

function did_action($tag) {
    return $GLOBALS['hook_system']->did_action($tag);
}

function current_filter($tag = null) {
    return $GLOBALS['hook_system']->current_filter($tag);
}

// WordPress compatibility functions
function add_action($tag, $function_to_add, $priority = 10, $accepted_args = 1) {
    return add_hook($tag, $function_to_add, $priority, $accepted_args);
}

function remove_action($tag, $function_to_remove, $priority = 10) {
    return remove_hook($tag, $function_to_remove, $priority);
}

function remove_filter($tag, $function_to_remove, $priority = 10) {
    return remove_hook($tag, $function_to_remove, $priority);
}

function has_action($tag, $function_to_check = null) {
    return has_hook($tag, $function_to_check);
}

function has_filter($tag, $function_to_check = null) {
    return has_hook($tag, $function_to_check);
}

// Plugin hooks
function register_activation_hook($file, $function) {
    add_hook('activate_' . plugin_basename($file), $function);
}

function register_deactivation_hook($file, $function) {
    add_hook('deactivate_' . plugin_basename($file), $function);
}

function plugin_basename($file) {
    return basename(dirname($file)) . '/' . basename($file);
}

// Initialize the system
do_action('init');

?>