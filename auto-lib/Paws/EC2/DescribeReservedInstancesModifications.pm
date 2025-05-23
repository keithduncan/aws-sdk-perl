
package Paws::EC2::DescribeReservedInstancesModifications;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ReservedInstancesModificationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ReservedInstancesModificationId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesModifications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeReservedInstancesModificationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeReservedInstancesModifications - Arguments for method DescribeReservedInstancesModifications on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReservedInstancesModifications on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeReservedInstancesModifications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReservedInstancesModifications.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeReservedInstancesModificationsResult =
      $ec2->DescribeReservedInstancesModifications(
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      NextToken                        => 'MyString',    # OPTIONAL
      ReservedInstancesModificationIds =>
        [ 'MyReservedInstancesModificationId', ... ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeReservedInstancesModificationsResult->NextToken;
    my $ReservedInstancesModifications =
      $DescribeReservedInstancesModificationsResult
      ->ReservedInstancesModifications;

  # Returns a L<Paws::EC2::DescribeReservedInstancesModificationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeReservedInstancesModifications>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<client-token> - The idempotency token for the modification request.

=item *

C<create-date> - The time when the modification request was created.

=item *

C<effective-date> - The time when the modification becomes effective.

=item *

C<modification-result.reserved-instances-id> - The ID for the Reserved
Instances created as part of the modification request. This ID is only
available when the status of the modification is C<fulfilled>.

=item *

C<modification-result.target-configuration.availability-zone> - The
Availability Zone for the new Reserved Instances.

=item *

C<modification-result.target-configuration.availability-zone-id> - The
ID of the Availability Zone for the new Reserved Instances.

=item *

C<modification-result.target-configuration.instance-count > - The
number of new Reserved Instances.

=item *

C<modification-result.target-configuration.instance-type> - The
instance type of the new Reserved Instances.

=item *

C<reserved-instances-id> - The ID of the Reserved Instances modified.

=item *

C<reserved-instances-modification-id> - The ID of the modification
request.

=item *

C<status> - The status of the Reserved Instances modification request
(C<processing> | C<fulfilled> | C<failed>).

=item *

C<status-message> - The reason for the status.

=item *

C<update-date> - The time when the modification request was last
updated.

=back




=head2 NextToken => Str

The token to retrieve the next page of results.



=head2 ReservedInstancesModificationIds => ArrayRef[Str|Undef]

IDs for the submitted modification request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReservedInstancesModifications in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

