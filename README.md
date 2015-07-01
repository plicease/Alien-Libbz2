# Alien::Libbz2

Build and make available bz2

# SYNOPSIS

    use Alien::Libbz2;
    
    my $cflags = Alien::Libbz2->cflags;
    my $libs   = ALien::Libbz2->libs;

# DESCRIPTION

This [Alien](https://metacpan.org/pod/Alien) module provides the necessary compiler and linker flags needed
for using libbz2 in XS.

# METHODS

## cflags

    my $cflags = Alien::Libbz2->cflags;

Returns the C compiler flags.

## libs

    my $libs = Alien::Libbz2->libs;

Returns the linker flags.

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
