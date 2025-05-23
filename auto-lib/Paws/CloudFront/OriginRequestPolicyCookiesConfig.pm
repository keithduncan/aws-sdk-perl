# Generated by default/object.tt
package Paws::CloudFront::OriginRequestPolicyCookiesConfig;
  use Moose;
  has CookieBehavior => (is => 'ro', isa => 'Str', required => 1);
  has Cookies => (is => 'ro', isa => 'Paws::CloudFront::CookieNames');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::OriginRequestPolicyCookiesConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::OriginRequestPolicyCookiesConfig object:

  $service_obj->Method(Att1 => { CookieBehavior => $value, ..., Cookies => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::OriginRequestPolicyCookiesConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CookieBehavior

=head1 DESCRIPTION

An object that determines whether any cookies in viewer requests (and
if so, which cookies) are included in requests that CloudFront sends to
the origin.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CookieBehavior => Str

Determines whether cookies in viewer requests are included in requests
that CloudFront sends to the origin. Valid values are:

=over

=item *

C<none> E<ndash> No cookies in viewer requests are included in requests
that CloudFront sends to the origin. Even when this field is set to
C<none>, any cookies that are listed in a C<CachePolicy> I<are>
included in origin requests.

=item *

C<whitelist> E<ndash> Only the cookies in viewer requests that are
listed in the C<CookieNames> type are included in requests that
CloudFront sends to the origin.

=item *

C<all> E<ndash> All cookies in viewer requests are included in requests
that CloudFront sends to the origin.

=item *

C<allExcept> E<ndash> All cookies in viewer requests are included in
requests that CloudFront sends to the origin, I< B<except> > for those
listed in the C<CookieNames> type, which are not included.

=back



=head2 Cookies => L<Paws::CloudFront::CookieNames>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

