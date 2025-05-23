
package Paws::S3::PutBucketAnalyticsConfiguration;
  use Moose;
  has AnalyticsConfiguration => (is => 'ro', isa => 'Paws::S3::AnalyticsConfiguration', traits => ['ParamInBody'], required => 1);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has Id => (is => 'ro', isa => 'Str', query_name => 'id', traits => ['ParamInQuery'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketAnalyticsConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?analytics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketAnalyticsConfiguration - Arguments for method PutBucketAnalyticsConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketAnalyticsConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketAnalyticsConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketAnalyticsConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketAnalyticsConfiguration(
      AnalyticsConfiguration => {
        Id                   => 'MyAnalyticsId',
        StorageClassAnalysis => {
          DataExport => {
            Destination => {
              S3BucketDestination => {
                Bucket          => 'MyBucketName',
                Format          => 'CSV',            # values: CSV
                BucketAccountId => 'MyAccountId',    # OPTIONAL
                Prefix          => 'MyPrefix',       # OPTIONAL
              },

            },
            OutputSchemaVersion => 'V_1',            # values: V_1

          },    # OPTIONAL
        },
        Filter => {
          And => {
            Prefix => 'MyPrefix',    # OPTIONAL
            Tags   => [
              {
                Key   => 'MyObjectKey',    # min: 1
                Value => 'MyValue',

              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          Prefix => 'MyPrefix',    # OPTIONAL
          Tag    => {
            Key   => 'MyObjectKey',    # min: 1
            Value => 'MyValue',

          },
        },    # OPTIONAL
      },
      Bucket              => 'MyBucketName',
      Id                  => 'MyAnalyticsId',
      ExpectedBucketOwner => 'MyAccountId',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketAnalyticsConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyticsConfiguration => L<Paws::S3::AnalyticsConfiguration>

The configuration and any analyses for the analytics filter.



=head2 B<REQUIRED> Bucket => Str

The name of the bucket to which an analytics configuration is stored.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 B<REQUIRED> Id => Str

The ID that identifies the analytics configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketAnalyticsConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

