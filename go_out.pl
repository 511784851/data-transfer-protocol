#! /usr/bin/perl

use Cwd;
$pwd = cwd();

#################server_client protos#######################
$server_client_protos = "server-client/result.proto ".
                        "server-client/account.proto ".
						"server-client/login.proto ".
						"server-client/oss.proto ".
						"server-client/news.proto ".
						"server-client/comment.proto ";

$cmd = "protoc -Iserver-client --go_out=../go-commons/ ".$server_client_protos;
system($cmd);


#################server_server protos#######################
$server_server_protos = "server-server/login_api.proto ".
                        "";

$cmd = "protoc -Iserver-server --go_out=../go-commons/service/ ".$server_server_protos;
system($cmd);



system(pause);

