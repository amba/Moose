package Moose::Meta::Method::Accessor::Native::Bool::not;

use strict;
use warnings;

our $VERSION = '1.25';
$VERSION = eval $VERSION;
our $AUTHORITY = 'cpan:STEVAN';

use Moose::Role;

with 'Moose::Meta::Method::Accessor::Native::Reader' =>
    { -excludes => ['_maximum_arguments'] };

sub _maximum_arguments { 0 }

sub _return_value {
    my ( $self, $slot_access ) = @_;

    return "! $slot_access";
}

1;
