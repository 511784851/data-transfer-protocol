#! /usr/bin/perl

use Cwd;
$pwd = cwd();

$cmd = "../protoc --go_out=../../go-commons/service/ login_api.proto account_api.proto";
print("\n");
system($cmd);
system(pause);

