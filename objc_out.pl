#! /usr/bin/perl
use File::Path;
use Cwd;
$pwd = cwd();

$output = "../code/mobaxx/mobaxx/model_pb";
if (@ARGV > 0) {
	$output = $ARGV[0];
} else {
	rmtree($output, 0, 0711);
	mkdir($output);
}

#################server_client protos#######################
$server_client_protos = "server-client/*.proto ";

$cmd = "protoc-mac -Iserver-client --objc_out=".$output." ".$server_client_protos;
system($cmd);


if (@ARGV == 0) {
	system(pause);
}
