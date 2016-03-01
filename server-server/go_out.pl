#! /usr/bin/perl

use Cwd;
$pwd = cwd();

$cmd = "../protoc --go_out=../../go-commons/service/ *.proto";
print("\n");
system($cmd);
system(pause);

