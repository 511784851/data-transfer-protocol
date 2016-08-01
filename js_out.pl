#! /usr/bin/perl
use File::Path;
use Cwd;
$pwd = cwd();

$output = "../web-fan-management/dist/js/proto";
if (@ARGV > 0) {
	$output = $ARGV[0];
}

@protos = (
	"result",
	"account",
	"login",
	"oss",
	"news",
	"comment",
	"social",
	"community",
	"wallet",
);

foreach $p (@protos){
	$cmd = "protoc -Iserver-client --js_out=library=${p},binary:${output} server-client/${p}.proto";
	system($cmd);
}

if (@ARGV == 0) {
	system(pause);
}


