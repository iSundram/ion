<?php
/**
 * ionCube Decoder Test Script
 * Tests all decoders against the hooks.php file
 */

echo "🔧 ionCube Decoder Test Suite\n";
echo "=============================\n\n";

$hooks_file = dirname(__FILE__) . '/../hooks.php';
$result_dir = dirname(__FILE__) . '/../result';

// Ensure result directory exists
if (!is_dir($result_dir)) {
    mkdir($result_dir, 0755, true);
    echo "📁 Created result directory: $result_dir\n\n";
}

// Test basic decoder
echo "🔍 Testing Basic ionCube Decoder...\n";
$output = shell_exec("php " . dirname(__FILE__) . "/ioncube_decoder.php \"$hooks_file\" 2>&1");
echo $output . "\n";

// Test advanced decoder  
echo "🔍 Testing Advanced ionCube Decoder...\n";
$output = shell_exec("php " . dirname(__FILE__) . "/advanced_decoder.php \"$hooks_file\" 2>&1");
echo $output . "\n";

// Verify results
echo "📊 VERIFICATION RESULTS\n";
echo "=====================\n";

$result_files = glob($result_dir . '/*.php');
foreach ($result_files as $file) {
    echo "📄 File: " . basename($file) . "\n";
    echo "   Size: " . filesize($file) . " bytes\n";
    
    // Check for PHP syntax errors
    $syntax_check = shell_exec("php -l \"$file\" 2>&1");
    if (strpos($syntax_check, 'No syntax errors') !== false) {
        echo "   ✅ Syntax: Valid PHP\n";
    } else {
        echo "   ❌ Syntax: Errors found\n";
    }
    
    // Check for hook functions
    $content = file_get_contents($file);
    $hook_functions = ['add_hook', 'do_action', 'add_filter', 'apply_filters'];
    $found_functions = 0;
    
    foreach ($hook_functions as $func) {
        if (strpos($content, "function $func") !== false) {
            $found_functions++;
        }
    }
    
    echo "   🎯 Hook functions: $found_functions/4 found\n";
    
    // Check for HookManager class
    if (strpos($content, 'class HookManager') !== false || 
        strpos($content, 'class HookSystem') !== false) {
        echo "   ✅ Hook management class found\n";
    } else {
        echo "   ❌ No hook management class\n";
    }
    
    echo "\n";
}

// Test functional execution
echo "🧪 FUNCTIONAL TESTING\n";
echo "==================\n";

foreach ($result_files as $file) {
    echo "Testing: " . basename($file) . "\n";
    
    // Create test script
    $test_script = $result_dir . '/test_' . basename($file);
    $test_content = '<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);

echo "Loading: ' . basename($file) . '\n";

try {
    include_once "' . $file . '";
    echo "✅ File loaded successfully\n";
    
    // Test hook functions
    if (function_exists("add_hook")) {
        echo "✅ add_hook function available\n";
        
        // Test adding a hook
        $result = add_hook("test_hook", function() {
            echo "Hook executed!\n";
        });
        
        if ($result) {
            echo "✅ Hook added successfully\n";
            
            // Test executing the hook
            if (function_exists("do_action")) {
                echo "✅ do_action function available\n";
                do_action("test_hook");
            }
        }
    }
    
    // Test filter functions
    if (function_exists("add_filter") && function_exists("apply_filters")) {
        echo "✅ Filter functions available\n";
        
        add_filter("test_filter", function($value) {
            return $value . " (filtered)";
        });
        
        $result = apply_filters("test_filter", "test value");
        echo "Filter result: $result\n";
    }
    
    echo "🎯 Functional test completed successfully\n";
    
} catch (Exception $e) {
    echo "❌ Error: " . $e->getMessage() . "\n";
} catch (ParseError $e) {
    echo "❌ Parse Error: " . $e->getMessage() . "\n";
} catch (Error $e) {
    echo "❌ Fatal Error: " . $e->getMessage() . "\n";
}
?>';
    
    file_put_contents($test_script, $test_content);
    
    echo shell_exec("php \"$test_script\" 2>&1");
    echo "\n---\n\n";
    
    unlink($test_script);
}

echo "🏆 TESTING COMPLETE!\n";
echo "Check the /result directory for decoded files.\n";

?>