#! /usr/bin/perl
use Cwd;
$pwd = cwd();

$output = "output";
mkdir($output);

#################server_client protos#######################
$server_client_protos = "server-client/result.proto ".
                        "server-client/account.proto ".
						"server-client/login.proto ".
						"server-client/conversation.proto";
$cmd = "protoc --java_out=".$output." ".$server_client_protos;
system($cmd);



#################server_server protos#######################
$server_server_protos = "server-server/friend_group.proto ";
$cmd = "protoc --java_out=".$output." ".$server_server_protos;
system($cmd);




system(pause);
