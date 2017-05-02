#! /usr/bin/perl
use File::Path;
use Cwd;
$pwd = cwd();

$output = "../web-fan-management/src/protobuf";
if (@ARGV > 0) {
	$output = $ARGV[0];
}

$protos = "server-client/result.proto ".
		"server-client/account.proto ".
		"server-client/login.proto ".
		"server-client/oss.proto ".
		"server-client/news.proto ".
		"server-client/comment.proto ".
		"server-client/platform.proto ".
		"server-client/datapublishing.proto ".
		"server-client/community.proto ".
		"server-client/netdisk.proto ";


$cmd = "protoc -Iserver-client -Iserver-server --js_out=import_style=commonjs,binary:${output} ${protos}";
system($cmd);

if (@ARGV == 0) {
	system(pause);
}


