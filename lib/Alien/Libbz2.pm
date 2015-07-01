package Alien::Libbz2;

use strict;
use warnings;
use 5.008001;
use parent 'Alien::Base';

# ABSTRACT: Build and make available bz2
# VERSION

=head1 SYNOPSIS

 use Alien::Libbz2;
 
 my $cflags = Alien::Libbz2->cflags;
 my $libs   = ALien::Libbz2->libs;

=head1 DESCRIPTION

This L<Alien> module provides the necessary compiler and linker flags needed
for using libbz2 in XS.

=head1 METHODS

=head2 cflags

 my $cflags = Alien::Libbz2->cflags;

Returns the C compiler flags.

=head2 libs

 my $libs = Alien::Libbz2->libs;

Returns the linker flags.

=cut

1;
