package My::ModuleBuild;

use strict;
use warnings;
use 5.008001;
use parent 'Alien::Base::ModuleBuild';
use Config;
use ExtUtils::CChecker;
use Capture::Tiny qw( capture );
use Devel::CheckLib;

sub new {
  my($class, %args) = @_;
  
  $args{alien_name} = 'bz2';
  $args{alien_build_commands} = [
    [ $Config{make}, 'all', 'PREFIX=%s' ],
  ];
  $args{alien_install_commands} = [
    [ $Config{make}, 'install', 'PREFIX=%s' ],
  ];
  $args{alien_repository} = {
    protocol       => 'http',
    host           => 'www.bzip.org',
    location       => '/1.0.6/',
    exact_filename => "bzip2-1.0.6.tar.gz",
  };
  $args{alien_provides_libs} = '-lbz2';
  
  my $self = $class->SUPER::new(%args);
  
  $self;
}

sub alien_check_installed_version {
  my($self) = @_;
  
  my $cc = ExtUtils::CChecker->new(
    quiet  => 1,
    config => { libs => "$Config{libs} -lbz2" },
  );

  $cc->push_extra_linker_flags('-lbz2');

  my($version, undef, $ok) = capture {  
  
    my $code = <<EOF;
#include <stdio.h>
#include <bzlib.h>

int
main(int argc, char *argv[])
{
  printf("%s", BZ2_bzlibVersion());
  return 0;
}
EOF
  
    my $ok = $cc->try_compile_run(
      source => $code,
    );
  };
  
  return unless $ok;
  
  $version =~ s/,.*$//;
  
  $version;
}

sub alien_check_built_version {
  my($self) = @_;
  '1.0.6';
}

1;
