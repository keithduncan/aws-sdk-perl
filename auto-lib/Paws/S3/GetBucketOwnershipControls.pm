
package Paws::S3::GetBucketOwnershipControls;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketOwnershipControls');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?ownershipControls');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetBucketOwnershipControlsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketOwnershipControls - Arguments for method GetBucketOwnershipControls on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBucketOwnershipControls on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method GetBucketOwnershipControls.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBucketOwnershipControls.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $GetBucketOwnershipControlsOutput = $s3->GetBucketOwnershipControls(
      Bucket              => 'MyBucketName',
      ExpectedBucketOwner => 'MyAccountId',    # OPTIONAL
    );

    # Results:
    my $OwnershipControls =
      $GetBucketOwnershipControlsOutput->OwnershipControls;

    # Returns a L<Paws::S3::GetBucketOwnershipControlsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/GetBucketOwnershipControls>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the Amazon S3 bucket whose C<OwnershipControls> you want to
retrieve.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBucketOwnershipControls in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

