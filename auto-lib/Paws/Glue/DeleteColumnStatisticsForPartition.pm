
package Paws::Glue::DeleteColumnStatisticsForPartition;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has ColumnName => (is => 'ro', isa => 'Str', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has PartitionValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteColumnStatisticsForPartition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::DeleteColumnStatisticsForPartitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteColumnStatisticsForPartition - Arguments for method DeleteColumnStatisticsForPartition on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteColumnStatisticsForPartition on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method DeleteColumnStatisticsForPartition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteColumnStatisticsForPartition.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $DeleteColumnStatisticsForPartitionResponse =
      $glue->DeleteColumnStatisticsForPartition(
      ColumnName      => 'MyNameString',
      DatabaseName    => 'MyNameString',
      PartitionValues => [
        'MyValueString', ...    # min: 1, max: 1024
      ],
      TableName => 'MyNameString',
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/DeleteColumnStatisticsForPartition>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the partitions in question reside. If
none is supplied, the Amazon Web Services account ID is used by
default.



=head2 B<REQUIRED> ColumnName => Str

Name of the column.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database where the partitions reside.



=head2 B<REQUIRED> PartitionValues => ArrayRef[Str|Undef]

A list of partition values identifying the partition.



=head2 B<REQUIRED> TableName => Str

The name of the partitions' table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteColumnStatisticsForPartition in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

