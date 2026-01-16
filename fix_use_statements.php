<?php
// Fix duplicate/malformed use statements in split model files

$directories = [
    'app/Models/Sekretariat',
    'app/Models/Logistik',
    'app/Models/Sdm',
    'app/Models/Keuangan',
];

$baseDir = __DIR__;

foreach ($directories as $dir) {
    $fullDir = $baseDir . '/' . $dir;
    if (!is_dir($fullDir)) {
        continue;
    }

    $files = glob($fullDir . '/*.php');
    foreach ($files as $file) {
        if (strpos(basename($file), '.bak') !== false) {
            continue;
        }

        $content = file_get_contents($file);

        // Remove malformed use statements (those without backslash = not fully qualified)
        // These are the trait uses that were incorrectly extracted as imports
        $lines = explode("\n", $content);
        $newLines = [];
        $inClassBody = false;

        foreach ($lines as $line) {
            $trimmed = trim($line);

            // Detect class start
            if (preg_match('/^class\s+\w+/', $trimmed)) {
                $inClassBody = true;
                $newLines[] = $line;
                continue;
            }

            // If it's a use statement in the header (before class)
            if (!$inClassBody && preg_match('/^use\s+(.+);$/', $trimmed, $match)) {
                $useContent = trim($match[1]);

                // Skip if it doesn't contain backslash (not a fully qualified namespace)
                // This catches "use SoftDeletes, HasDocumentFeatures;" which should be inside class
                if (!str_contains($useContent, '\\')) {
                    echo "Removing malformed use: $trimmed in " . basename($file) . "\n";
                    continue; // Skip this line
                }
            }

            $newLines[] = $line;
        }

        $newContent = implode("\n", $newLines);
        file_put_contents($file, $newContent);
        echo "Processed: " . basename($file) . "\n";
    }
}

echo "\nDone fixing use statements.\n";
