
package Paws::DirectConnect::Interconnect;
  use Moose;
  has AwsDevice => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsDevice' );
  has AwsDeviceV2 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsDeviceV2' );
  has AwsLogicalDeviceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsLogicalDeviceId' );
  has Bandwidth => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bandwidth' );
  has HasLogicalRedundancy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hasLogicalRedundancy' );
  has InterconnectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'interconnectId' );
  has InterconnectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'interconnectName' );
  has InterconnectState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'interconnectState' );
  has JumboFrameCapable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'jumboFrameCapable' );
  has LagId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lagId' );
  has LoaIssueTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loaIssueTime' );
  has Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'location' );
  has ProviderName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'providerName' );
  has Region => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'region' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Interconnect

=head1 ATTRIBUTES


=head2 AwsDevice => Str

The Direct Connect endpoint on which the physical connection
terminates.


=head2 AwsDeviceV2 => Str

The Direct Connect endpoint that terminates the physical connection.


=head2 AwsLogicalDeviceId => Str

The Direct Connect endpoint that terminates the logical connection.
This device might be different than the device that terminates the
physical connection.


=head2 Bandwidth => Str

The bandwidth of the connection.


=head2 HasLogicalRedundancy => Str

Indicates whether the interconnect supports a secondary BGP in the same
address family (IPv4/IPv6).

Valid values are: C<"unknown">, C<"yes">, C<"no">
=head2 InterconnectId => Str

The ID of the interconnect.


=head2 InterconnectName => Str

The name of the interconnect.


=head2 InterconnectState => Str

The state of the interconnect. The following are the possible values:

=over

=item *

C<requested>: The initial state of an interconnect. The interconnect
stays in the requested state until the Letter of Authorization (LOA) is
sent to the customer.

=item *

C<pending>: The interconnect is approved, and is being initialized.

=item *

C<available>: The network link is up, and the interconnect is ready for
use.

=item *

C<down>: The network link is down.

=item *

C<deleting>: The interconnect is being deleted.

=item *

C<deleted>: The interconnect is deleted.

=item *

C<unknown>: The state of the interconnect is not available.

=back


Valid values are: C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">, C<"unknown">
=head2 JumboFrameCapable => Bool

Indicates whether jumbo frames are supported.


=head2 LagId => Str

The ID of the LAG.


=head2 LoaIssueTime => Str

The time of the most recent call to DescribeLoa for this connection.


=head2 Location => Str

The location of the connection.


=head2 ProviderName => Str

The name of the service provider associated with the interconnect.


=head2 Region => Str

The Amazon Web Services Region where the connection is located.


=head2 Tags => ArrayRef[L<Paws::DirectConnect::Tag>]

The tags associated with the interconnect.


=head2 _request_id => Str


=cut

1;