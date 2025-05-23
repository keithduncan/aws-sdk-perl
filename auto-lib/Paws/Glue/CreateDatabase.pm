
package Paws::Glue::CreateDatabase;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseInput => (is => 'ro', isa => 'Paws::Glue::DatabaseInput', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDatabase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateDatabaseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateDatabase - Arguments for method CreateDatabase on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDatabase on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDatabase.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateDatabaseResponse = $glue->CreateDatabase(
      DatabaseInput => {
        Name                          => 'MyNameString',    # min: 1, max: 255
        CreateTableDefaultPermissions => [
          {
            Permissions => [
              'ALL',
              ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
            ],    # OPTIONAL
            Principal => {
              DataLakePrincipalIdentifier =>
                'MyDataLakePrincipalString',    # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Description       => 'MyDescriptionString',    # max: 2048; OPTIONAL
        FederatedDatabase => {
          ConnectionName => 'MyNameString',            # min: 1, max: 255
          Identifier => 'MyFederationIdentifier',   # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        LocationUri => 'MyURI',    # min: 1, max: 1024; OPTIONAL
        Parameters  => {
          'MyKeyString' =>
            'MyParametersMapValue',  # key: min: 1, max: 255, value: max: 512000
        },    # OPTIONAL
        TargetDatabase => {
          CatalogId    => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
          DatabaseName => 'MyNameString',         # min: 1, max: 255
          Region       => 'MyNameString',         # min: 1, max: 255
        },    # OPTIONAL
      },
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
      Tags      => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateDatabase>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog in which to create the database. If none is
provided, the Amazon Web Services account ID is used by default.



=head2 B<REQUIRED> DatabaseInput => L<Paws::Glue::DatabaseInput>

The metadata for the database.



=head2 Tags => L<Paws::Glue::TagsMap>

The tags you assign to the database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDatabase in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

