#! /usr/bin/perl
use File::Path;
use Cwd;
$pwd = cwd();
 
$output = "output";
if (@ARGV > 0) {
	$output = $ARGV[0];
} else {
	rmtree($output, 0, 0711);
	mkdir($output);
}

#################server_client protos#######################
$server_client_protos = "server-client/*.proto ";
$cmd = "protoc -Iserver-client -Iserver-server --java_out=".$output." ".$server_client_protos;
system($cmd);



#################server_server protos#######################
$server_server_protos = "server-server/*.proto ";
$cmd = "protoc -Iserver-client -Iserver-server --java_out=".$output." ".$server_server_protos;
system($cmd);



if (@ARGV == 0) {
	system(pause);
}
