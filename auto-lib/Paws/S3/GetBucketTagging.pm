
package Paws::S3::GetBucketTagging;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketTagging');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?tagging');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetBucketTaggingOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketTagging - Arguments for method GetBucketTagging on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBucketTagging on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method GetBucketTagging.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBucketTagging.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To get tag set associated with a bucket
    # The following example returns tag set associated with a bucket
    my $GetBucketTaggingOutput =
      $s3->GetBucketTagging( 'Bucket' => 'examplebucket' );

    # Results:
    my $TagSet = $GetBucketTaggingOutput->TagSet;

    # Returns a L<Paws::S3::GetBucketTaggingOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/GetBucketTagging>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket for which to get the tagging information.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBucketTagging in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

