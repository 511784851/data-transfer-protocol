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
						"server-client/platform.proto ".
						"server-client/datapublishing.proto ".
						"server-client/notification.proto ".
						"server-client/community.proto ".
						"server-client/wallet.proto ".
						"server-client/contact.proto ".
						"server-client/netdisk.proto ".
						"server-client/streaming.proto ".
						"server-client/chat.proto ".
						"server-client/task.proto ".
						"server-client/edge.proto ".
						"server-client/achievement.proto";

$cmd = "protoc -Iserver-client --go_out=".$output." ".$server_client_protos;
system($cmd);


#################server_server protos#######################
$server_server_protos = "server-server/login_api.proto ".
                        "server-server/account_api.proto ".
						"server-server/notification_api.proto ".
						"server-server/wallet_api.proto ".
						"server-server/datapublishing_api.proto ".
						"server-server/news_api.proto ".
						"server-server/achievement_api.proto";
-d ($output = $output."/service") || mkdir($output);
$cmd = "protoc -Iserver-server --go_out=".$output." ".$server_server_protos;
system($cmd);

if (@ARGV == 0) {
	system(pause);
}


