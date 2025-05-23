
package Paws::Glue::CreatePartition;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has PartitionInput => (is => 'ro', isa => 'Paws::Glue::PartitionInput', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePartition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreatePartitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreatePartition - Arguments for method CreatePartition on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePartition on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreatePartition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePartition.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreatePartitionResponse = $glue->CreatePartition(
      DatabaseName   => 'MyNameString',
      PartitionInput => {
        LastAccessTime   => '1970-01-01T01:00:00',    # OPTIONAL
        LastAnalyzedTime => '1970-01-01T01:00:00',    # OPTIONAL
        Parameters       => {
          'MyKeyString' =>
            'MyParametersMapValue',  # key: min: 1, max: 255, value: max: 512000
        },    # OPTIONAL
        StorageDescriptor => {
          AdditionalLocations => [
            'MyLocationString', ...    # max: 2056
          ],    # OPTIONAL
          BucketColumns => [
            'MyNameString', ...    # min: 1, max: 255
          ],    # OPTIONAL
          Columns => [
            {
              Name       => 'MyNameString',       # min: 1, max: 255
              Comment    => 'MyCommentString',    # max: 255; OPTIONAL
              Parameters => {
                'MyKeyString' => 'MyParametersMapValue'
                ,    # key: min: 1, max: 255, value: max: 512000
              },    # OPTIONAL
              Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          Compressed      => 1,                     # OPTIONAL
          InputFormat     => 'MyFormatString',      # max: 128; OPTIONAL
          Location        => 'MyLocationString',    # max: 2056
          NumberOfBuckets => 1,                     # OPTIONAL
          OutputFormat    => 'MyFormatString',      # max: 128; OPTIONAL
          Parameters      => {
            'MyKeyString' => 'MyParametersMapValue'
            ,    # key: min: 1, max: 255, value: max: 512000
          },    # OPTIONAL
          SchemaReference => {
            SchemaId => {
              RegistryName =>
                'MySchemaRegistryNameString',    # min: 1, max: 255; OPTIONAL
              SchemaArn  => 'MyGlueResourceArn', # min: 1, max: 10240; OPTIONAL
              SchemaName =>
                'MySchemaRegistryNameString',    # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
            SchemaVersionId =>
              'MySchemaVersionIdString',    # min: 36, max: 36; OPTIONAL
            SchemaVersionNumber => 1,       # min: 1, max: 100000; OPTIONAL
          },    # OPTIONAL
          SerdeInfo => {
            Name       => 'MyNameString',    # min: 1, max: 255
            Parameters => {
              'MyKeyString' => 'MyParametersMapValue'
              ,    # key: min: 1, max: 255, value: max: 512000
            },    # OPTIONAL
            SerializationLibrary => 'MyNameString',    # min: 1, max: 255
          },    # OPTIONAL
          SkewedInfo => {
            SkewedColumnNames => [
              'MyNameString', ...    # min: 1, max: 255
            ],    # OPTIONAL
            SkewedColumnValueLocationMaps =>
              { 'MyColumnValuesString' => 'MyColumnValuesString', },  # OPTIONAL
            SkewedColumnValues => [ 'MyColumnValuesString', ... ],    # OPTIONAL
          },    # OPTIONAL
          SortColumns => [
            {
              Column    => 'MyNameString',    # min: 1, max: 255
              SortOrder => 1,                 # max: 1

            },
            ...
          ],    # OPTIONAL
          StoredAsSubDirectories => 1,    # OPTIONAL
        },    # OPTIONAL
        Values => [
          'MyValueString', ...    # min: 1, max: 1024
        ],    # OPTIONAL
      },
      TableName => 'MyNameString',
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreatePartition>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The Amazon Web Services account ID of the catalog in which the
partition is to be created.



=head2 B<REQUIRED> DatabaseName => Str

The name of the metadata database in which the partition is to be
created.



=head2 B<REQUIRED> PartitionInput => L<Paws::Glue::PartitionInput>

A C<PartitionInput> structure defining the partition to be created.



=head2 B<REQUIRED> TableName => Str

The name of the metadata table in which the partition is to be created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePartition in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

