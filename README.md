# Alien::Libbz2 [![Build Status](https://secure.travis-ci.org/Perl5-Alien/Alien-Libbz2.png)](http://travis-ci.org/Perl5-Alien/Alien-Libbz2)

Build and make available bz2

# SYNOPSIS

In your Makefile.PL:

```perl
use ExtUtils::MakeMaker;
use Alien::Base::Wrapper ();

WriteMakefile(
  Alien::Base::Wrapper->new('Alien::Libbz2')->mm_args2(
    # MakeMaker args
    NAME => 'Kafka::Librd',
    ...
  ),
);
```

In your Build.PL:

```perl
use Module::Build;
use Alien::Base::Wrapper qw( Alien::Libbz2 !export );

my $builder = Module::Build->new(
  ...
  configure_requires => {
    'Alien::Libbz2' => '0',
    ...
  },
  Alien::Base::Wrapper->mb_args,
  ...
);

$build->create_build_script;
```

In your [FFI::Platypus](https://metacpan.org/pod/FFI::Platypus) script or module:

```perl
use FFI::Platypus;
use Alien::Libbz2;

my $ffi = FFI::Platypus->new(
  lib => [ Alien::Libbz2->dynamic_libs ],
);
```

In your script or module:

```perl
use Alien::Libbz2;
use Env qw( @PATH );

unshift @PATH, Alien::Libbz2->bin_dir;
```

# DESCRIPTION

This [Alien](https://metacpan.org/pod/Alien) module provides the necessary compiler and linker flags needed
for using libbz2 in XS.

# METHODS

## bin\_dir

```perl
my @dirs = Alien::Libbz2->bin_dir;
```

Returns a list of directories that need to be added to `PATH` in order to use
the command line tools.

## cflags

```perl
my $cflags = Alien::Libbz2->cflags;
```

Returns the C compiler flags.

## libs

```perl
my $libs = Alien::Libbz2->libs;
```

Returns the linker flags.

# HELPERS

## bzip2

```
%{bzip2}
```

Returns the name of the bzip2 command.  Usually just `bzip2`.

# SEE ALSO

- [Alien::bz2](https://metacpan.org/pod/Alien::bz2)

    Another libbz2 [Alien](https://metacpan.org/pod/Alien) module, but not implemented with [Alien::Base](https://metacpan.org/pod/Alien::Base).

- [Compress::Bzip2](https://metacpan.org/pod/Compress::Bzip2)
- [Compress::Raw::Bzip2](https://metacpan.org/pod/Compress::Raw::Bzip2)
- [IO::Compress::Bzip2](https://metacpan.org/pod/IO::Compress::Bzip2)

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
