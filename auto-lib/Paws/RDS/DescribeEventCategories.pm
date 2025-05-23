
package Paws::RDS::DescribeEventCategories;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has SourceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventCategories');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::EventCategoriesMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventCategoriesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeEventCategories - Arguments for method DescribeEventCategories on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEventCategories on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeEventCategories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEventCategories.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To list event categories.
    # This example lists all DB instance event categories.
    my $EventCategoriesMessage =
      $rds->DescribeEventCategories( 'SourceType' => 'db-instance' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeEventCategories>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

This parameter isn't currently supported.



=head2 SourceType => Str

The type of source that is generating the events. For RDS Proxy events,
specify C<db-proxy>.

Valid Values: C<db-instance> | C<db-cluster> | C<db-parameter-group> |
C<db-security-group> | C<db-snapshot> | C<db-cluster-snapshot> |
C<db-proxy>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEventCategories in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

