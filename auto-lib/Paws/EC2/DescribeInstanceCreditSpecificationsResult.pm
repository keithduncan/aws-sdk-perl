
package Paws::EC2::DescribeInstanceCreditSpecificationsResult;
  use Moose;
  has InstanceCreditSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceCreditSpecification]', request_name => 'instanceCreditSpecificationSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstanceCreditSpecificationsResult

=head1 ATTRIBUTES


=head2 InstanceCreditSpecifications => ArrayRef[L<Paws::EC2::InstanceCreditSpecification>]

Information about the credit option for CPU usage of an instance.


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 _request_id => Str


=cut

