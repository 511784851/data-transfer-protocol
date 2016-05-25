#! /usr/bin/perl
use File::Path;
use Cwd;
$pwd = cwd();

$output = "../code/mobaxx/mobaxx/model_pb";
$exe = "protoc-mac";
if (@ARGV == 2) {
	$output = $ARGV[0];
    $exe = $ARGV[1];
} else {
	rmtree($output, 0, 0711);
	mkdir($output);
}

#################server_client protos#######################
$server_client_protos = "server-client/*.proto ";

$cmd = "${exe} -Iserver-client --objc_out=${output} ${server_client_protos}";
system($cmd);


if (@ARGV == 0) {
	system(pause);
}
