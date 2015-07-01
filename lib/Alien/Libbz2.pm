package Alien::Libbz2;

use strict;
use warnings;
use 5.008001;
use parent 'Alien::Base';

# ABSTRACT: Build and make available bz2
# VERSION

sub libs {
  my($class) = @_;
  $class->install_type eq 'system' ? '-lbz2' : $class->SUPER::libs;
}

1;
