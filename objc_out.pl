#! /usr/bin/perl

use Cwd;
$pwd = cwd();

$output = "output";
mkdir($output);

#################server_client protos#######################
$server_client_protos = "server-client/*.proto ";

$cmd = "protoc -Iserver-client --objc_out=".$output." ".$server_client_protos;
system($cmd);



system(pause);


