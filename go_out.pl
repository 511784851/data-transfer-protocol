#! /usr/bin/perl
use File::Path;
use Cwd; 
$pwd = cwd();
 
$output = "../go-commons";
mkdir($output);
$output = $output."/bbproto";
mkdir($output);

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
						"server-client/achievement.proto ".
						"server-server/common_inside.proto ".
						"server-server/login_inside.proto ".
                        "server-server/account_inside.proto ".
						"server-server/notification_inside.proto ".
						"server-server/wallet_inside.proto ".
						"server-server/datapublishing_inside.proto ".
						"server-server/news_inside.proto ".
						"server-server/achievement_inside.proto ".
						"server-server/community_inside.proto ".
						"server-server/comment_inside.proto";

$cmd = "protoc -Iserver-client -Iserver-server --go_out=plugins=grpc:".$output." ".$server_client_protos;
system($cmd);

if (@ARGV == 0) {
	system(pause);
}


