#! /usr/bin/perl

use Cwd;
$pwd = cwd();

#################server_client protos#######################
$server_client_protos = "server-client/result.proto ".
                        "server-client/account.proto ".
						"server-client/login.proto ".
						"server-client/oss.proto ".
						"server-client/news.proto ".
						"server-client/comment.proto ".
						"server-client/conversation.proto";

$cmd = "protoc -Iserver-client --javanano_out=. ".$server_client_protos;
system($cmd);



system(pause);


