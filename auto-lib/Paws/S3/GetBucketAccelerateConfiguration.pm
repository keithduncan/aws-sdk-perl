
package Paws::S3::GetBucketAccelerateConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketAccelerateConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?accelerate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetBucketAccelerateConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketAccelerateConfiguration - Arguments for method GetBucketAccelerateConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBucketAccelerateConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method GetBucketAccelerateConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBucketAccelerateConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $GetBucketAccelerateConfigurationOutput =
      $s3->GetBucketAccelerateConfiguration(
      Bucket              => 'MyBucketName',
      ExpectedBucketOwner => 'MyAccountId',    # OPTIONAL
      RequestPayer        => 'requester',      # OPTIONAL
      );

    # Results:
    my $RequestCharged =
      $GetBucketAccelerateConfigurationOutput->RequestCharged;
    my $Status = $GetBucketAccelerateConfigurationOutput->Status;

    # Returns a L<Paws::S3::GetBucketAccelerateConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/GetBucketAccelerateConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket for which the accelerate configuration is
retrieved.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 RequestPayer => Str



Valid values are: C<"requester">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBucketAccelerateConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

