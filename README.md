# Alien::Libbz2 [![Build Status](https://secure.travis-ci.org/Perl5-Alien/Alien-Libbz2.png)](http://travis-ci.org/Perl5-Alien/Alien-Libbz2)

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

# HELPERS

## bzip2

    %{bzip2}

Returns the name of the bzip2 command.  Usually just `bzip2`.

# SEE ALSO

- [Alien::bz2](https://metacpan.org/pod/Alien::bz2)

    Another libbz2 [Alien](https://metacpan.org/pod/Alien) module, but not implemented with [Alien:Base](Alien:Base).

- [Compress::Bzip2](https://metacpan.org/pod/Compress::Bzip2)
- [Compress::Raw::Bzip2](https://metacpan.org/pod/Compress::Raw::Bzip2)
- [IO::Compress::Bzip2](https://metacpan.org/pod/IO::Compress::Bzip2)

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
