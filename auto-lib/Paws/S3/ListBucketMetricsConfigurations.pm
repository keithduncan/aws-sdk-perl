
package Paws::S3::ListBucketMetricsConfigurations;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ContinuationToken => (is => 'ro', isa => 'Str', query_name => 'continuation-token', traits => ['ParamInQuery']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBucketMetricsConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?metrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListBucketMetricsConfigurationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListBucketMetricsConfigurations - Arguments for method ListBucketMetricsConfigurations on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBucketMetricsConfigurations on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method ListBucketMetricsConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBucketMetricsConfigurations.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $ListBucketMetricsConfigurationsOutput =
      $s3->ListBucketMetricsConfigurations(
      Bucket              => 'MyBucketName',
      ContinuationToken   => 'MyToken',        # OPTIONAL
      ExpectedBucketOwner => 'MyAccountId',    # OPTIONAL
      );

    # Results:
    my $ContinuationToken =
      $ListBucketMetricsConfigurationsOutput->ContinuationToken;
    my $IsTruncated = $ListBucketMetricsConfigurationsOutput->IsTruncated;
    my $MetricsConfigurationList =
      $ListBucketMetricsConfigurationsOutput->MetricsConfigurationList;
    my $NextContinuationToken =
      $ListBucketMetricsConfigurationsOutput->NextContinuationToken;

    # Returns a L<Paws::S3::ListBucketMetricsConfigurationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/ListBucketMetricsConfigurations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket containing the metrics configurations to
retrieve.



=head2 ContinuationToken => Str

The marker that is used to continue a metrics configuration listing
that has been truncated. Use the C<NextContinuationToken> from a
previously truncated list response to continue the listing. The
continuation token is an opaque value that Amazon S3 understands.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBucketMetricsConfigurations in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

