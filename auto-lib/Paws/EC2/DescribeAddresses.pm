
package Paws::EC2::DescribeAddresses;
  use Moose;
  has AllocationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'AllocationId' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has PublicIps => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'PublicIp' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAddresses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeAddressesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAddresses - Arguments for method DescribeAddresses on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAddresses on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeAddresses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAddresses.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe your Elastic IP addresses
    # This example describes your Elastic IP addresses.
    my $DescribeAddressesResult = $ec2->DescribeAddresses();

    # Results:
    my $Addresses = $DescribeAddressesResult->Addresses;

  # Returns a L<Paws::EC2::DescribeAddressesResult> object.
  # To describe your Elastic IP addresses for EC2-VPC
  # This example describes your Elastic IP addresses for use with instances in a
  # VPC.
    my $DescribeAddressesResult = $ec2->DescribeAddresses(
      'Filters' => [

        {
          'Name'   => 'domain',
          'Values' => ['vpc']
        }
      ]
    );

    # Results:
    my $Addresses = $DescribeAddressesResult->Addresses;

    # Returns a L<Paws::EC2::DescribeAddressesResult> object.
    # To describe your Elastic IP addresses for EC2-Classic
    # This example describes your Elastic IP addresses for use with instances in
    # EC2-Classic.
    my $DescribeAddressesResult = $ec2->DescribeAddresses(
      'Filters' => [

        {
          'Name'   => 'domain',
          'Values' => ['standard']
        }
      ]
    );

    # Results:
    my $Addresses = $DescribeAddressesResult->Addresses;

    # Returns a L<Paws::EC2::DescribeAddressesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeAddresses>

=head1 ATTRIBUTES


=head2 AllocationIds => ArrayRef[Str|Undef]

Information about the allocation IDs.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters. Filter names and values are case-sensitive.

=over

=item *

C<allocation-id> - The allocation ID for the address.

=item *

C<association-id> - The association ID for the address.

=item *

C<instance-id> - The ID of the instance the address is associated with,
if any.

=item *

C<network-border-group> - A unique set of Availability Zones, Local
Zones, or Wavelength Zones from where Amazon Web Services advertises IP
addresses.

=item *

C<network-interface-id> - The ID of the network interface that the
address is associated with, if any.

=item *

C<network-interface-owner-id> - The Amazon Web Services account ID of
the owner.

=item *

C<private-ip-address> - The private IP address associated with the
Elastic IP address.

=item *

C<public-ip> - The Elastic IP address, or the carrier IP address.

=item *

C<tag>:E<lt>keyE<gt> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=back




=head2 PublicIps => ArrayRef[Str|Undef]

One or more Elastic IP addresses.

Default: Describes all your Elastic IP addresses.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAddresses in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

