use strict;
use warnings;
use Test::More;
use Test::CChecker;
use Alien::Libbz2;

plan tests => 1;

compile_output_to_note;

compile_with_alien 'Alien::Libbz2';

compile_run_ok <<C_CODE, "basic compile test";
#include <bzlib.h>

int
main(int argc, char *argv[])
{
  const char *version;
  version = BZ2_bzlibVersion();
  return 0;
}
C_CODE

