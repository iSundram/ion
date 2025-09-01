<?php
/**
 * Demo script to test recovered ionCube source
 */

echo "Testing recovered ionCube source...\n";

// Include the recovered source
include_once __DIR__ . '/hooks_recovered.php';

echo "✅ Source included successfully!\n";

// Test some functions if they exist
if (function_exists('add_hook')) {
    echo "✅ add_hook function available\n";
    
    // Test adding a hook
    add_hook('test_hook', function() {
        echo "Hook executed successfully!\n";
    });
    
    // Test executing the hook
    if (function_exists('do_action')) {
        echo "✅ do_action function available\n";
        do_action('test_hook');
    }
}

if (class_exists('HookManager')) {
    echo "✅ HookManager class available\n";
    $manager = new HookManager();
    echo "✅ HookManager instance created\n";
}

echo "\n🎯 Recovery verification complete!\n";
?>