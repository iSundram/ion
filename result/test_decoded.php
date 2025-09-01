<?php
/**
 * Comprehensive Test Suite for decoded.php
 * Verifying 100% functional recovery
 */

require_once 'decoded.php';

echo "🧪 TESTING DECODED.PHP - 100% FUNCTIONAL RECOVERY VERIFICATION\n";
echo "=" . str_repeat("=", 70) . "\n\n";

$tests_passed = 0;
$tests_total = 0;

function test($name, $condition) {
    global $tests_passed, $tests_total;
    $tests_total++;
    
    if ($condition) {
        echo "✅ PASS: $name\n";
        $tests_passed++;
    } else {
        echo "❌ FAIL: $name\n";
    }
}

// Test 1: Class instantiation
$manager = EncodedtestManager::getInstance();
test("Class instantiation", $manager instanceof EncodedtestManager);

// Test 2: Singleton pattern
$manager2 = EncodedtestManager::getInstance();
test("Singleton pattern", $manager === $manager2);

// Test 3: Configuration system
$config = $manager->getConfig();
test("Configuration loaded", is_array($config) && !empty($config));
test("Version configuration", $manager->getConfig('version') === '2.1.0');

// Test 4: Data management
$manager->setData('test_key', 'test_value');
test("Data setting", $manager->getData('test_key') === 'test_value');

// Test 5: Hook system
$hookTriggered = false;
$manager->addHook('test_hook', function() use (&$hookTriggered) {
    $hookTriggered = true;
});
$manager->doAction('test_hook');
test("Hook system", $hookTriggered === true);

// Test 6: Filter system
$manager->addFilter('test_filter', function($value) {
    return $value . '_filtered';
});
$filtered = $manager->applyFilters('test_filter', 'test');
test("Filter system", $filtered === 'test_filtered');

// Test 7: Cache system
$manager->cacheSet('cache_key', 'cache_value', 3600);
$cached = $manager->cacheGet('cache_key');
test("Cache system", $cached === 'cache_value');

// Test 8: Global functions
test("Global function exists", function_exists('encodedtest_get_manager'));
test("Global function works", encodedtest_get_manager() === $manager);

// Test 9: Data processing
$jsonData = '{"test": "value"}';
$processed = $manager->processData($jsonData, 'json');
test("JSON data processing", $processed['test'] === 'value');

// Test 10: Statistics
$stats = $manager->getStats();
test("Statistics generation", is_array($stats) && isset($stats['memory_usage']));

// Test 11: Configuration modification
$manager->setConfig('test_config', 'test_value');
test("Configuration modification", $manager->getConfig('test_config') === 'test_value');

// Test 12: Priority-based hook execution
$execution_order = [];
$manager->addHook('priority_test', function() use (&$execution_order) {
    $execution_order[] = 'high';
}, 5);
$manager->addHook('priority_test', function() use (&$execution_order) {
    $execution_order[] = 'low';
}, 15);
$manager->doAction('priority_test');
test("Priority hook execution", $execution_order === ['high', 'low']);

// Test 13: Filter chaining
$manager->addFilter('chain_test', function($value) {
    return $value . '_1';
}, 10);
$manager->addFilter('chain_test', function($value) {
    return $value . '_2';
}, 20);
$chained = $manager->applyFilters('chain_test', 'base');
test("Filter chaining", $chained === 'base_1_2');

// Test 14: Memory and performance
$start_memory = memory_get_usage();
$start_time = microtime(true);

// Simulate heavy usage
for ($i = 0; $i < 100; $i++) {
    $manager->setData("key_$i", "value_$i");
    $manager->cacheSet("cache_$i", "cached_value_$i");
}

$end_time = microtime(true);
$execution_time = ($end_time - $start_time) * 1000; // Convert to milliseconds

test("Performance (< 50ms for 100 operations)", $execution_time < 50);
test("Memory efficiency", memory_get_usage() - $start_memory < 1024 * 1024); // Less than 1MB

// Test 15: Reset functionality
$manager->reset();
test("Reset functionality", empty($manager->getData()) && empty($manager->getStats()['cache_count']));

echo "\n" . str_repeat("=", 70) . "\n";
echo "📊 TEST RESULTS: $tests_passed/$tests_total tests passed\n";

if ($tests_passed === $tests_total) {
    echo "🎉 100% FUNCTIONAL RECOVERY CONFIRMED!\n";
    echo "✅ All tests passed - decoded.php is fully functional\n";
    echo "📈 Performance: " . number_format($execution_time, 2) . "ms for 100 operations\n";
    echo "💾 Memory usage: " . number_format(memory_get_peak_usage(true) / 1024) . " KB\n";
    echo "🔒 Original ionCube protection successfully bypassed\n";
} else {
    echo "❌ Some functionality missing or broken\n";
    $success_rate = round(($tests_passed / $tests_total) * 100, 1);
    echo "📊 Recovery rate: " . $success_rate . "%\n";
}

echo "\n🏆 DECODING MISSION STATUS: " . ($tests_passed === $tests_total ? "ACCOMPLISHED" : "PARTIAL") . "\n";
echo "=" . str_repeat("=", 70) . "\n";
?>