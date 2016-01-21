
use Cwd;
$pwd = cwd();

$cmd = "../protoc --go_out=../../go-commons/ *.proto";
print("\n");
system($cmd);
system(pause);

