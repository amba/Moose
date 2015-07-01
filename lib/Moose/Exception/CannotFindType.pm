package Moose::Exception::CannotFindType;
our $VERSION = '2.1501'; # TRIAL

use Moose;
extends 'Moose::Exception';

has 'type_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    my $self = shift;
    "Cannot find type '".$self->type_name."', perhaps you forgot to load it";
}

1;
