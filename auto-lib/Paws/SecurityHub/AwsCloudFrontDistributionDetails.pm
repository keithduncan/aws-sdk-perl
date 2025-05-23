# Generated by default/object.tt
package Paws::SecurityHub::AwsCloudFrontDistributionDetails;
  use Moose;
  has CacheBehaviors => (is => 'ro', isa => 'Paws::SecurityHub::AwsCloudFrontDistributionCacheBehaviors');
  has DefaultCacheBehavior => (is => 'ro', isa => 'Paws::SecurityHub::AwsCloudFrontDistributionDefaultCacheBehavior');
  has DefaultRootObject => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
  has ETag => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Logging => (is => 'ro', isa => 'Paws::SecurityHub::AwsCloudFrontDistributionLogging');
  has OriginGroups => (is => 'ro', isa => 'Paws::SecurityHub::AwsCloudFrontDistributionOriginGroups');
  has Origins => (is => 'ro', isa => 'Paws::SecurityHub::AwsCloudFrontDistributionOrigins');
  has Status => (is => 'ro', isa => 'Str');
  has ViewerCertificate => (is => 'ro', isa => 'Paws::SecurityHub::AwsCloudFrontDistributionViewerCertificate');
  has WebAclId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsCloudFrontDistributionDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsCloudFrontDistributionDetails object:

  $service_obj->Method(Att1 => { CacheBehaviors => $value, ..., WebAclId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsCloudFrontDistributionDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheBehaviors

=head1 DESCRIPTION

A CloudFront distribution configuration.

=head1 ATTRIBUTES


=head2 CacheBehaviors => L<Paws::SecurityHub::AwsCloudFrontDistributionCacheBehaviors>

Provides information about the cache configuration for the
distribution.


=head2 DefaultCacheBehavior => L<Paws::SecurityHub::AwsCloudFrontDistributionDefaultCacheBehavior>

The default cache behavior for the configuration.


=head2 DefaultRootObject => Str

The object that CloudFront sends in response to requests from the
origin (for example, index.html) when a viewer requests the root URL
for the distribution (http://www.example.com) instead of an object in
your distribution (http://www.example.com/product-description.html).


=head2 DomainName => Str

The domain name corresponding to the distribution.


=head2 ETag => Str

The entity tag is a hash of the object.


=head2 LastModifiedTime => Str

Indicates when that the distribution was last modified.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).


=head2 Logging => L<Paws::SecurityHub::AwsCloudFrontDistributionLogging>

A complex type that controls whether access logs are written for the
distribution.


=head2 OriginGroups => L<Paws::SecurityHub::AwsCloudFrontDistributionOriginGroups>

Provides information about the origin groups in the distribution.


=head2 Origins => L<Paws::SecurityHub::AwsCloudFrontDistributionOrigins>

A complex type that contains information about origins for this
distribution.


=head2 Status => Str

Indicates the current status of the distribution.


=head2 ViewerCertificate => L<Paws::SecurityHub::AwsCloudFrontDistributionViewerCertificate>

Provides information about the TLS/SSL configuration that the
distribution uses to communicate with viewers.


=head2 WebAclId => Str

A unique identifier that specifies the WAF web ACL, if any, to
associate with this distribution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

