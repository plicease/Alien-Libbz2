use strict;
use warnings;
use Test2::Bundle::Extended;
use Test::Alien 0.05;
use Alien::Libbz2;

skip_all 'TODO';

alien_ok 'Alien::Libbz2';
ffi_ok { symbols => ['BZ2_bzlibVersion'] }, with_subtest {
  my($ffi) = @_;
  my $version = $ffi->function(BZ2_bzlibVersion => [] => 'string')->call;
  ok $version;
  note "version = $version";
};

done_testing;

