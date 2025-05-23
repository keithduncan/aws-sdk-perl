# Generated by default/object.tt
package Paws::CloudFront::CookiePreference;
  use Moose;
  has Forward => (is => 'ro', isa => 'Str', required => 1);
  has WhitelistedNames => (is => 'ro', isa => 'Paws::CloudFront::CookieNames');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CookiePreference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::CookiePreference object:

  $service_obj->Method(Att1 => { Forward => $value, ..., WhitelistedNames => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::CookiePreference object:

  $result = $service_obj->Method(...);
  $result->Att1->Forward

=head1 DESCRIPTION

This field is deprecated. We recommend that you use a cache policy or
an origin request policy instead of this field.

If you want to include cookies in the cache key, use C<CookiesConfig>
in a cache policy. See C<CachePolicy>.

If you want to send cookies to the origin but not include them in the
cache key, use C<CookiesConfig> in an origin request policy. See
C<OriginRequestPolicy>.

A complex type that specifies whether you want CloudFront to forward
cookies to the origin and, if so, which ones. For more information
about forwarding cookies to the origin, see Caching Content Based on
Cookies
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html)
in the I<Amazon CloudFront Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Forward => Str

This field is deprecated. We recommend that you use a cache policy or
an origin request policy instead of this field.

If you want to include cookies in the cache key, use a cache policy.
For more information, see Creating cache policies
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy)
in the I<Amazon CloudFront Developer Guide>.

If you want to send cookies to the origin but not include them in the
cache key, use origin request policy. For more information, see
Creating origin request policies
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy)
in the I<Amazon CloudFront Developer Guide>.

Specifies which cookies to forward to the origin for this cache
behavior: all, none, or the list of cookies specified in the
C<WhitelistedNames> complex type.

Amazon S3 doesn't process cookies. When the cache behavior is
forwarding requests to an Amazon S3 origin, specify none for the
C<Forward> element.


=head2 WhitelistedNames => L<Paws::CloudFront::CookieNames>

This field is deprecated. We recommend that you use a cache policy or
an origin request policy instead of this field.

If you want to include cookies in the cache key, use a cache policy.
For more information, see Creating cache policies
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy)
in the I<Amazon CloudFront Developer Guide>.

If you want to send cookies to the origin but not include them in the
cache key, use an origin request policy. For more information, see
Creating origin request policies
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy)
in the I<Amazon CloudFront Developer Guide>.

Required if you specify C<whitelist> for the value of C<Forward>. A
complex type that specifies how many different cookies you want
CloudFront to forward to the origin for this cache behavior and, if you
want to forward selected cookies, the names of those cookies.

If you specify C<all> or C<none> for the value of C<Forward>, omit
C<WhitelistedNames>. If you change the value of C<Forward> from
C<whitelist> to C<all> or C<none> and you don't delete the
C<WhitelistedNames> element and its child elements, CloudFront deletes
them automatically.

For the current limit on the number of cookie names that you can
whitelist for each cache behavior, see CloudFront Limits
(https://docs.aws.amazon.com/general/latest/gr/xrefaws_service_limits.html#limits_cloudfront)
in the I<Amazon Web Services General Reference>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

