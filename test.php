<?php
/**
 * Example: Large PHP Script for ionCube Encode/Decode Testing
 * Author: Sundram
 * Date: 2025-09-01
 */

declare(strict_types=1);

// Simple config
$config = [
    'app_name' => 'ionCube Demo App',
    'version'  => '1.0.0',
    'debug'    => true,
];

// Utility function
function logMessage(string $level, string $message): void {
    $time = date('Y-m-d H:i:s');
    echo "[{$time}] {$level}: {$message}", PHP_EOL;
}

// Basic class
class User {
    private string $name;
    private string $email;
    private array $roles = [];

    public function __construct(string $name, string $email) {
        $this->name  = $name;
        $this->email = $email;
    }

    public function assignRole(string $role): void {
        if (!in_array($role, $this->roles, true)) {
            $this->roles[] = $role;
        }
    }

    public function getRoles(): array {
        return $this->roles;
    }

    public function __toString(): string {
        return "{$this->name} <{$this->email}>";
    }
}

// Another class
class MathTools {
    public static function fibonacci(int $n): int {
        if ($n <= 1) return $n;
        return self::fibonacci($n - 1) + self::fibonacci($n - 2);
    }

    public static function factorial(int $n): int {
        return $n <= 1 ? 1 : $n * self::factorial($n - 1);
    }
}

// Example usage
logMessage('INFO', "Starting {$config['app_name']} v{$config['version']}");

// Create some users
$users = [
    new User("Alice", "alice@example.com"),
    new User("Bob", "bob@example.com"),
    new User("Charlie", "charlie@example.com"),
];

$users[0]->assignRole("admin");
$users[1]->assignRole("editor");
$users[2]->assignRole("viewer");

// Print users and roles
foreach ($users as $user) {
    logMessage('USER', (string)$user . " has roles: " . implode(", ", $user->getRoles()));
}

// Do some math
for ($i = 0; $i < 10; $i++) {
    $fib = MathTools::fibonacci($i);
    logMessage('MATH', "Fib($i) = $fib");
}

$fact = MathTools::factorial(10);
logMessage('MATH', "10! = $fact");

// Generate random data
$data = [];
for ($i = 0; $i < 20; $i++) {
    $data[] = [
        'id'    => $i + 1,
        'value' => bin2hex(random_bytes(4)),
    ];
}

// Print table
foreach ($data as $row) {
    logMessage('DATA', "Row {$row['id']} => {$row['value']}");
}

logMessage('INFO', "Script finished.");
