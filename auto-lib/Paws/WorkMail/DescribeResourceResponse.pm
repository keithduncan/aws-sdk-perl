
package Paws::WorkMail::DescribeResourceResponse;
  use Moose;
  has BookingOptions => (is => 'ro', isa => 'Paws::WorkMail::BookingOptions');
  has Description => (is => 'ro', isa => 'Str');
  has DisabledDate => (is => 'ro', isa => 'Str');
  has Email => (is => 'ro', isa => 'Str');
  has EnabledDate => (is => 'ro', isa => 'Str');
  has HiddenFromGlobalAddressList => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeResourceResponse

=head1 ATTRIBUTES


=head2 BookingOptions => L<Paws::WorkMail::BookingOptions>

The booking options for the described resource.


=head2 Description => Str

Description of the resource.


=head2 DisabledDate => Str

The date and time when a resource was disabled from WorkMail, in UNIX
epoch time format.


=head2 Email => Str

The email of the described resource.


=head2 EnabledDate => Str

The date and time when a resource was enabled for WorkMail, in UNIX
epoch time format.


=head2 HiddenFromGlobalAddressList => Bool

If enabled, the resource is hidden from the global address list.


=head2 Name => Str

The name of the described resource.


=head2 ResourceId => Str

The identifier of the described resource.


=head2 State => Str

The state of the resource: enabled (registered to WorkMail), disabled
(deregistered or never registered to WorkMail), or deleted.

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"DELETED">
=head2 Type => Str

The type of the described resource.

Valid values are: C<"ROOM">, C<"EQUIPMENT">
=head2 _request_id => Str


=cut

1;