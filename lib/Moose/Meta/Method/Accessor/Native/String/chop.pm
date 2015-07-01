package Moose::Meta::Method::Accessor::Native::String::chop;
our $VERSION = '2.1501'; # TRIAL

use strict;
use warnings;

use Moose::Role;

with 'Moose::Meta::Method::Accessor::Native::Writer';

sub _maximum_arguments { 0 }

sub _potential_value {
    my $self = shift;
    my ($slot_access) = @_;

    return '(do { '
             . 'my $val = ' . $slot_access . '; '
             . '@return = chop $val; '
             . '$val; '
         . '})';
}

sub _inline_optimized_set_new_value {
    my $self = shift;
    my ($inv, $new, $slot_access) = @_;

    return '@return = chop ' . $slot_access . ';';
}

sub _return_value {
    my $self = shift;
    my ($slot_access) = @_;

    return '$return[0]';
}

no Moose::Role;

1;
