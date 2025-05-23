
package Paws::RDS::DescribeReservedDBInstances;
  use Moose;
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has LeaseId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedDBInstanceId => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedDBInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ReservedDBInstanceMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedDBInstancesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeReservedDBInstances - Arguments for method DescribeReservedDBInstances on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReservedDBInstances on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeReservedDBInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReservedDBInstances.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
# To list information about reserved DB instances
# This example lists information for all reserved DB instances for the specified
# DB instance class, duration, product, offering type, and availability zone
# settings.
    my $ReservedDBInstanceMessage = $rds->DescribeReservedDBInstances(
      'DBInstanceClass'    => 'db.t2.micro',
      'Duration'           => '1y',
      'MultiAZ'            => 0,
      'OfferingType'       => 'No Upfront',
      'ProductDescription' => 'mysql'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeReservedDBInstances>

=head1 ATTRIBUTES


=head2 DBInstanceClass => Str

The DB instance class filter value. Specify this parameter to show only
those reservations matching the specified DB instances class.



=head2 Duration => Str

The duration filter value, specified in years or seconds. Specify this
parameter to show only reservations for this duration.

Valid Values: C<1 | 3 | 31536000 | 94608000>



=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

This parameter isn't currently supported.



=head2 LeaseId => Str

The lease identifier filter value. Specify this parameter to show only
the reservation that matches the specified lease ID.

Amazon Web Services Support might request the lease ID for an issue
related to a reserved DB instance.



=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more than
the C<MaxRecords> value is available, a pagination token called a
marker is included in the response so you can retrieve the remaining
results.

Default: 100

Constraints: Minimum 20, maximum 100.



=head2 MultiAZ => Bool

Specifies whether to show only those reservations that support
Multi-AZ.



=head2 OfferingType => Str

The offering type filter value. Specify this parameter to show only the
available offerings matching the specified offering type.

Valid Values: C<"Partial Upfront" | "All Upfront" | "No Upfront">



=head2 ProductDescription => Str

The product description filter value. Specify this parameter to show
only those reservations matching the specified product description.



=head2 ReservedDBInstanceId => Str

The reserved DB instance identifier filter value. Specify this
parameter to show only the reservation that matches the specified
reservation ID.



=head2 ReservedDBInstancesOfferingId => Str

The offering identifier filter value. Specify this parameter to show
only purchased reservations matching the specified offering identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReservedDBInstances in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

