
package Paws::SecurityLake::CreateDataLake;
  use Moose;
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::SecurityLake::DataLakeConfiguration]', traits => ['NameInRequest'], request_name => 'configurations', required => 1);
  has MetaStoreManagerRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metaStoreManagerRoleArn', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SecurityLake::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataLake');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/datalake');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::CreateDataLakeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::CreateDataLake - Arguments for method CreateDataLake on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataLake on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method CreateDataLake.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataLake.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $CreateDataLakeResponse = $securitylake->CreateDataLake(
      Configurations => [
        {
          Region                  => 'MyRegion',
          EncryptionConfiguration => {
            KmsKeyId => 'MyString',    # OPTIONAL
          },    # OPTIONAL
          LifecycleConfiguration => {
            Expiration => {
              Days => 1,    # min: 1; OPTIONAL
            },    # OPTIONAL
            Transitions => [
              {
                Days         => 1,                           # min: 1; OPTIONAL
                StorageClass => 'MyDataLakeStorageClass',    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          ReplicationConfiguration => {
            Regions => [ 'MyRegion', ... ],    # OPTIONAL
            RoleArn => 'MyRoleArn',            # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      MetaStoreManagerRoleArn => 'MyRoleArn',
      Tags                    => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DataLakes = $CreateDataLakeResponse->DataLakes;

    # Returns a L<Paws::SecurityLake::CreateDataLakeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/CreateDataLake>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configurations => ArrayRef[L<Paws::SecurityLake::DataLakeConfiguration>]

Specify the Region or Regions that will contribute data to the rollup
region.



=head2 B<REQUIRED> MetaStoreManagerRoleArn => Str

The Amazon Resource Name (ARN) used to create and update the Glue
table. This table contains partitions generated by the ingestion and
normalization of Amazon Web Services log sources and custom sources.



=head2 Tags => ArrayRef[L<Paws::SecurityLake::Tag>]

An array of objects, one for each tag to associate with the data lake
configuration. For each tag, you must specify both a tag key and a tag
value. A tag value cannot be null, but it can be an empty string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataLake in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

