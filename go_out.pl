#! /usr/bin/perl
use File::Path;
use Cwd;
$pwd = cwd();

$output = "../go-commons";
if (@ARGV > 0) {
	$output = $ARGV[0];
}

#################server_client protos#######################
$server_client_protos = "server-client/result.proto ".
                        "server-client/account.proto ".
						"server-client/login.proto ".
						"server-client/oss.proto ".
						"server-client/news.proto ".
						"server-client/comment.proto ".
						"server-client/social.proto ".
						"server-client/platform.proto";

$cmd = "protoc -Iserver-client --go_out=".$output." ".$server_client_protos;
system($cmd);


#################server_server protos#######################
$server_server_protos = "server-server/login_api.proto ".
                        "server-server/account_api.proto ".
						"server-server/notification_api.proto";
-d ($output = $output."/service") || mkdir($output);
$cmd = "protoc -Iserver-server --go_out=".$output." ".$server_server_protos;
system($cmd);

if (@ARGV == 0) {
	system(pause);
}


