

use Cwd;
use File::Copy;
$pwd = cwd();

print("------��ʼ��װGo������������\n");

@libList = (
   # "github.com/go-sql-driver/mysql",
    "github.com/google/protobuf",
    "github.com/astaxie/beego",
   ## "github.com/golang/net",

    "github.com/gorilla/websocket",
    "github.com/pborman/uuid",
    "github.com/garyburd/redigo/redis",
    "github.com/golang/groupcache",
    "github.com/hashicorp/consul/api",
    "github.com/rafaeljusto/redigomock",
	"github.com/MieYua/Aliyun-OSS-Go-SDK/oss",
	"github.com/denverdino/aliyungo/oss",
	"github.com/bitly/go-hostpool"
);

$i = 0;
while($i<@libList)
{
    $cmd = "go get ${libList[$i]}";
    print($cmd);
    print("\n");
    system($cmd);
    
    $cmd = "go build ${libList[$i]}";
    print($cmd);
    print("\n");
    system($cmd);
    
    $i++;
}

print("\n��װ����\n");

my $logDir = "../../logs";
if ( !(-e $logDir) )
{
    mkdir $logDir or die;
}

print("\n\n------����Ĭ�ϵ������ļ���Ŀ¼\n");
my $dir = "../../cfg";
if ( !(-e $dir) )
{
    mkdir $dir or die;
}

my $file = "${dir}/cfg.ini";
if ( !(-e $file) )
{
    copy("def_cfg.ini", $file);
}
else 
{
    print("\nĬ�������ļ�-${file}�Ѿ����ڣ�����Ҫ�����µģ������ֶ�ɾ���Ѵ��ڵģ�");
}


print("\n����Ĭ�ϵ������ļ�������\n");
#system("copy def_cfg.ini ../../cfg/cfg.ini");
##print("\nnet�������websokect�ǵð�����test����Ĵ���ע�͡�");
system("pause")

