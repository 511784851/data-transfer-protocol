#! /usr/bin/perl
use File::Path;
use Cwd; 
$pwd = cwd();
 
$output = "../web-fan-management/src/protobuf";
mkdir($output);

if (@ARGV > 0) {
	$output = $ARGV[0];
}

#################server_client protos#######################
$protos = "server-client/result.proto ".
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
						"server-client/contact.proto ".
						"server-client/netdisk.proto ".
						"server-client/streaming.proto ".
						"server-client/chat.proto ".
						"server-client/task.proto ".
						"server-client/edge.proto ".
						"server-client/achievement.proto ".
						"server-client/fans.proto ".
						"server-server/common_inside.proto ".
						"server-server/login_inside.proto ".
                        "server-server/account_inside.proto ".
						"server-server/notification_inside.proto ".
						"server-server/datapublishing_inside.proto ".
						"server-server/news_inside.proto ".
						"server-server/achievement_inside.proto ".
						"server-server/community_inside.proto ".
						"server-server/comment_inside.proto ".
						"server-server/oss_inside.proto ".
						"server-server/platform_inside.proto ".
						"server-client/robot.proto ".
						"server-server/robot_inside.proto ".
						"server-server/social_inside.proto ".
						"server-server/netdisk_inside.proto";

$cmd = "protoc -Iserver-client -Iserver-server --js_out=import_style=commonjs,binary:${output} ${protos}";
system($cmd);

if (@ARGV == 0) {
	system(pause);
}