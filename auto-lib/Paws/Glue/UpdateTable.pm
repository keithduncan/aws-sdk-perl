
package Paws::Glue::UpdateTable;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has Force => (is => 'ro', isa => 'Bool');
  has SkipArchive => (is => 'ro', isa => 'Bool');
  has TableInput => (is => 'ro', isa => 'Paws::Glue::TableInput', required => 1);
  has TransactionId => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
  has ViewUpdateAction => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateTableResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateTable - Arguments for method UpdateTable on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTable on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTable.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateTableResponse = $glue->UpdateTable(
      DatabaseName => 'MyNameString',
      TableInput   => {
        Name             => 'MyNameString',           # min: 1, max: 255
        Description      => 'MyDescriptionString',    # max: 2048; OPTIONAL
        LastAccessTime   => '1970-01-01T01:00:00',    # OPTIONAL
        LastAnalyzedTime => '1970-01-01T01:00:00',    # OPTIONAL
        Owner            => 'MyNameString',           # min: 1, max: 255
        Parameters       => {
          'MyKeyString' =>
            'MyParametersMapValue',  # key: min: 1, max: 255, value: max: 512000
        },    # OPTIONAL
        PartitionKeys => [
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
        Retention         => 1,    # OPTIONAL
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
        TableType   => 'MyTableTypeString',    # max: 255; OPTIONAL
        TargetTable => {
          CatalogId    => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
          DatabaseName => 'MyNameString',         # min: 1, max: 255
          Name         => 'MyNameString',         # min: 1, max: 255
          Region       => 'MyNameString',         # min: 1, max: 255
        },    # OPTIONAL
        ViewDefinition => {
          Definer         => 'MyArnString',    # min: 20, max: 2048; OPTIONAL
          IsProtected     => 1,                # OPTIONAL
          Representations => [
            {
              Dialect => 'REDSHIFT', # values: REDSHIFT, ATHENA, SPARK; OPTIONAL
              DialectVersion =>
                'MyViewDialectVersionString',    # min: 1, max: 255; OPTIONAL
              ValidationConnection => 'MyNameString',    # min: 1, max: 255
              ViewExpandedText => 'MyViewTextString',    # max: 409600; OPTIONAL
              ViewOriginalText => 'MyViewTextString',    # max: 409600; OPTIONAL
            },
            ...
          ],    # min: 1, max: 10; OPTIONAL
          SubObjects => [
            'MyArnString', ...    # min: 20, max: 2048; OPTIONAL
          ],    # max: 10; OPTIONAL
        },    # OPTIONAL
        ViewExpandedText => 'MyViewTextString',    # max: 409600; OPTIONAL
        ViewOriginalText => 'MyViewTextString',    # max: 409600; OPTIONAL
      },
      CatalogId        => 'MyCatalogIdString',        # OPTIONAL
      Force            => 1,                          # OPTIONAL
      SkipArchive      => 1,                          # OPTIONAL
      TransactionId    => 'MyTransactionIdString',    # OPTIONAL
      VersionId        => 'MyVersionString',          # OPTIONAL
      ViewUpdateAction => 'ADD',                      # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateTable>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the table resides. If none is
provided, the Amazon Web Services account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database in which the table resides. For Hive
compatibility, this name is entirely lowercase.



=head2 Force => Bool

A flag that can be set to true to ignore matching storage descriptor
and subobject matching requirements.



=head2 SkipArchive => Bool

By default, C<UpdateTable> always creates an archived version of the
table before updating it. However, if C<skipArchive> is set to true,
C<UpdateTable> does not create the archived version.



=head2 B<REQUIRED> TableInput => L<Paws::Glue::TableInput>

An updated C<TableInput> object to define the metadata table in the
catalog.



=head2 TransactionId => Str

The transaction ID at which to update the table contents.



=head2 VersionId => Str

The version ID at which to update the table contents.



=head2 ViewUpdateAction => Str

The operation to be performed when updating the view.

Valid values are: C<"ADD">, C<"REPLACE">, C<"ADD_OR_REPLACE">, C<"DROP">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTable in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

