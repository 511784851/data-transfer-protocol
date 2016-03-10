
use Cwd;
$pwd = cwd();

$cmd = "../protoc --javanano_out=../java *.proto";
print("\n");
system($cmd);
system(pause);

