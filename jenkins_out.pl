#! /usr/bin/perl
use File::Path;

$output_root = "output";
-d $output_root && rmtree($output_root, 0, 0);
mkdir($output_root);

$output = $output_root."/go";
mkdir($output);
`perl go_out.pl $output`;

$output = $output_root."/java";
mkdir($output);
`perl java_out.pl $output`;

$output = $output_root."/javanano";
mkdir($output);
`perl javanano_out.pl $output`;

$output = $output_root."/objc";
mkdir($output);
`perl objc_out.pl $output`;

print("success");