package Moose::Meta::Method::Accessor::Native::Hash::clear;

use strict;
use warnings;

our $VERSION = '1.14';
$VERSION = eval $VERSION;
our $AUTHORITY = 'cpan:STEVAN';

use base 'Moose::Meta::Method::Accessor::Native::Hash::Writer';

sub _maximum_arguments { 0 }

sub _adds_members { 0 }

sub _potential_value { return '{}' }

sub _inline_optimized_set_new_value {
    my ( $self, $inv, $new, $slot_access ) = @_;

    return "$slot_access = {};";
}

1;