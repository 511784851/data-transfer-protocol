
use Cwd;
$pwd = cwd();

$cmd = "../protoc --java_out=../java *.proto";
print("\n");
system($cmd);
system(pause);

