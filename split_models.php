<?php
// usage: php split_models.php

$bundles = [
    'app/Models/Sekretariat/All.php',
    'app/Models/Logistik/Part1.php',
    'app/Models/Logistik/Part2.php',
    'app/Models/Sdm/Part1.php',
    'app/Models/Sdm/Part2.php',
    'app/Models/Keuangan/Additional.php',
];

$baseDir = __DIR__;

foreach ($bundles as $relativePath) {
    $fullPath = $baseDir . '/' . $relativePath;
    if (!file_exists($fullPath)) {
        echo "Skipping missing file: " . $relativePath . "\n";
        continue;
    }

    echo "Processing " . $relativePath . "...\n";
    $content = file_get_contents($fullPath);

    // Extract namespace
    $namespace = '';
    if (preg_match('/namespace\s+(.+?);/', $content, $nsMatch)) {
        $namespace = $nsMatch[1];
    } else {
        echo "No namespace found in " . $relativePath . "\n";
        continue;
    }

    // Extract imports (use statements)
    preg_match_all('/use\s+(.+?);/', $content, $useMatches);
    $imports = $useMatches[0] ?? [];
    $importsStr = implode("\n", $imports);

    // Split by class definition
    $parts = preg_split('/(?=class\s+\w+\s+extends\s+Model)/', $content);

    if ($parts === false) {
        echo "Regex failed for $relativePath\n";
        continue;
    }

    foreach ($parts as $part) {
        if (!preg_match('/class\s+(\w+)\s+extends\s+Model/', $part, $classMatch)) {
            continue;
        }

        $className = $classMatch[1];
        $dir = dirname($fullPath);
        $newFile = $dir . '/' . $className . '.php';

        // Clean up content
        $classContent = trim($part);
        $classContent = preg_replace('/\?>$/', '', $classContent);

        // Build new file content
        $newContent = "<?php\n\nnamespace " . $namespace . ";\n\n" . $importsStr . "\n\n" . $classContent . "\n";

        file_put_contents($newFile, $newContent);
        echo "Created: " . $className . ".php\n";
    }

    // Rename original
    rename($fullPath, $fullPath . '.bak');
    echo "Renamed bundle to .bak\n";
}

echo "Done splitting models.\n";
