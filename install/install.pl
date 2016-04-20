

use Cwd;
use File::Copy;
$pwd = cwd();

print("------开始安装Go第三方依赖库\n");

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

print("\n安装结束\n");

my $logDir = "../../logs";
if ( !(-e $logDir) )
{
    mkdir $logDir or die;
}

print("\n\n------创建默认的配置文件及目录\n");
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
    print("\n默认配置文件-${file}已经存在，如需要覆盖新的，请先手动删除已存在的！");
}


print("\n创建默认的配置文件结束。\n");
#system("copy def_cfg.ini ../../cfg/cfg.ini");
##print("\nnet库里面的websokect记得把里面test里面的代码注释。");
system("pause")

