
package Paws::S3::ListBucketInventoryConfigurations;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ContinuationToken => (is => 'ro', isa => 'Str', query_name => 'continuation-token', traits => ['ParamInQuery']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBucketInventoryConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?inventory');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListBucketInventoryConfigurationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListBucketInventoryConfigurations - Arguments for method ListBucketInventoryConfigurations on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBucketInventoryConfigurations on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method ListBucketInventoryConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBucketInventoryConfigurations.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $ListBucketInventoryConfigurationsOutput =
      $s3->ListBucketInventoryConfigurations(
      Bucket              => 'MyBucketName',
      ContinuationToken   => 'MyToken',        # OPTIONAL
      ExpectedBucketOwner => 'MyAccountId',    # OPTIONAL
      );

    # Results:
    my $ContinuationToken =
      $ListBucketInventoryConfigurationsOutput->ContinuationToken;
    my $InventoryConfigurationList =
      $ListBucketInventoryConfigurationsOutput->InventoryConfigurationList;
    my $IsTruncated = $ListBucketInventoryConfigurationsOutput->IsTruncated;
    my $NextContinuationToken =
      $ListBucketInventoryConfigurationsOutput->NextContinuationToken;

    # Returns a L<Paws::S3::ListBucketInventoryConfigurationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/ListBucketInventoryConfigurations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket containing the inventory configurations to
retrieve.



=head2 ContinuationToken => Str

The marker used to continue an inventory configuration listing that has
been truncated. Use the C<NextContinuationToken> from a previously
truncated list response to continue the listing. The continuation token
is an opaque value that Amazon S3 understands.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBucketInventoryConfigurations in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

