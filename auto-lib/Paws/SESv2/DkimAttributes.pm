# Generated by default/object.tt
package Paws::SESv2::DkimAttributes;
  use Moose;
  has CurrentSigningKeyLength => (is => 'ro', isa => 'Str');
  has LastKeyGenerationTimestamp => (is => 'ro', isa => 'Str');
  has NextSigningKeyLength => (is => 'ro', isa => 'Str');
  has SigningAttributesOrigin => (is => 'ro', isa => 'Str');
  has SigningEnabled => (is => 'ro', isa => 'Bool');
  has Status => (is => 'ro', isa => 'Str');
  has Tokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::DkimAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::DkimAttributes object:

  $service_obj->Method(Att1 => { CurrentSigningKeyLength => $value, ..., Tokens => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::DkimAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentSigningKeyLength

=head1 DESCRIPTION

An object that contains information about the DKIM authentication
status for an email identity.

Amazon SES determines the authentication status by searching for
specific records in the DNS configuration for the domain. If you used
Easy DKIM
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html)
to set up DKIM authentication, Amazon SES tries to find three unique
CNAME records in the DNS configuration for your domain. If you provided
a public key to perform DKIM authentication, Amazon SES tries to find a
TXT record that uses the selector that you specified. The value of the
TXT record must be a public key that's paired with the private key that
you specified in the process of creating the identity

=head1 ATTRIBUTES


=head2 CurrentSigningKeyLength => Str

[Easy DKIM] The key length of the DKIM key pair in use.


=head2 LastKeyGenerationTimestamp => Str

[Easy DKIM] The last time a key pair was generated for this identity.


=head2 NextSigningKeyLength => Str

[Easy DKIM] The key length of the future DKIM key pair to be generated.
This can be changed at most once per day.


=head2 SigningAttributesOrigin => Str

A string that indicates how DKIM was configured for the identity. These
are the possible values:

=over

=item *

C<AWS_SES> E<ndash> Indicates that DKIM was configured for the identity
by using Easy DKIM
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html).

=item *

C<EXTERNAL> E<ndash> Indicates that DKIM was configured for the
identity by using Bring Your Own DKIM (BYODKIM).

=item *

C<AWS_SES_AF_SOUTH_1> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in Africa (Cape Town) region using Deterministic Easy-DKIM (DEED).

=item *

C<AWS_SES_EU_NORTH_1> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in Europe (Stockholm) region using Deterministic Easy-DKIM (DEED).

=item *

C<AWS_SES_AP_SOUTH_1> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in Asia Pacific (Mumbai) region using Deterministic Easy-DKIM (DEED).

=item *

C<AWS_SES_EU_WEST_3> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in Europe (Paris) region using Deterministic Easy-DKIM (DEED).

=item *

C<AWS_SES_EU_WEST_2> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in Europe (London) region using Deterministic Easy-DKIM (DEED).

=item *

C<AWS_SES_EU_SOUTH_1> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in Europe (Milan) region using Deterministic Easy-DKIM (DEED).

=item *

C<AWS_SES_EU_WEST_1> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in Europe (Ireland) region using Deterministic Easy-DKIM (DEED).

=item *

C<AWS_SES_AP_NORTHEAST_3> E<ndash> Indicates that DKIM was configured
for the identity by replicating signing attributes from a parent
identity in Asia Pacific (Osaka) region using Deterministic Easy-DKIM
(DEED).

=item *

C<AWS_SES_AP_NORTHEAST_2> E<ndash> Indicates that DKIM was configured
for the identity by replicating signing attributes from a parent
identity in Asia Pacific (Seoul) region using Deterministic Easy-DKIM
(DEED).

=item *

C<AWS_SES_ME_SOUTH_1> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in Middle East (Bahrain) region using Deterministic Easy-DKIM (DEED).

=item *

C<AWS_SES_AP_NORTHEAST_1> E<ndash> Indicates that DKIM was configured
for the identity by replicating signing attributes from a parent
identity in Asia Pacific (Tokyo) region using Deterministic Easy-DKIM
(DEED).

=item *

C<AWS_SES_IL_CENTRAL_1> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in Israel (Tel Aviv) region using Deterministic Easy-DKIM (DEED).

=item *

C<AWS_SES_SA_EAST_1> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in South America (SE<atilde>o Paulo) region using Deterministic
Easy-DKIM (DEED).

=item *

C<AWS_SES_CA_CENTRAL_1> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in Canada (Central) region using Deterministic Easy-DKIM (DEED).

=item *

C<AWS_SES_AP_SOUTHEAST_1> E<ndash> Indicates that DKIM was configured
for the identity by replicating signing attributes from a parent
identity in Asia Pacific (Singapore) region using Deterministic
Easy-DKIM (DEED).

=item *

C<AWS_SES_AP_SOUTHEAST_2> E<ndash> Indicates that DKIM was configured
for the identity by replicating signing attributes from a parent
identity in Asia Pacific (Sydney) region using Deterministic Easy-DKIM
(DEED).

=item *

C<AWS_SES_AP_SOUTHEAST_3> E<ndash> Indicates that DKIM was configured
for the identity by replicating signing attributes from a parent
identity in Asia Pacific (Jakarta) region using Deterministic Easy-DKIM
(DEED).

=item *

C<AWS_SES_EU_CENTRAL_1> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in Europe (Frankfurt) region using Deterministic Easy-DKIM (DEED).

=item *

C<AWS_SES_US_EAST_1> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in US East (N. Virginia) region using Deterministic Easy-DKIM (DEED).

=item *

C<AWS_SES_US_EAST_2> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in US East (Ohio) region using Deterministic Easy-DKIM (DEED).

=item *

C<AWS_SES_US_WEST_1> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in US West (N. California) region using Deterministic Easy-DKIM (DEED).

=item *

C<AWS_SES_US_WEST_2> E<ndash> Indicates that DKIM was configured for
the identity by replicating signing attributes from a parent identity
in US West (Oregon) region using Deterministic Easy-DKIM (DEED).

=back



=head2 SigningEnabled => Bool

If the value is C<true>, then the messages that you send from the
identity are signed using DKIM. If the value is C<false>, then the
messages that you send from the identity aren't DKIM-signed.


=head2 Status => Str

Describes whether or not Amazon SES has successfully located the DKIM
records in the DNS records for the domain. The status can be one of the
following:

=over

=item *

C<PENDING> E<ndash> The verification process was initiated, but Amazon
SES hasn't yet detected the DKIM records in the DNS configuration for
the domain.

=item *

C<SUCCESS> E<ndash> The verification process completed successfully.

=item *

C<FAILED> E<ndash> The verification process failed. This typically
occurs when Amazon SES fails to find the DKIM records in the DNS
configuration of the domain.

=item *

C<TEMPORARY_FAILURE> E<ndash> A temporary issue is preventing Amazon
SES from determining the DKIM authentication status of the domain.

=item *

C<NOT_STARTED> E<ndash> The DKIM verification process hasn't been
initiated for the domain.

=back



=head2 Tokens => ArrayRef[Str|Undef]

If you used Easy DKIM
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html)
to configure DKIM authentication for the domain, then this object
contains a set of unique strings that you use to create a set of CNAME
records that you add to the DNS configuration for your domain. When
Amazon SES detects these records in the DNS configuration for your
domain, the DKIM authentication process is complete.

If you configured DKIM authentication for the domain by providing your
own public-private key pair, then this object contains the selector for
the public key.

Regardless of the DKIM authentication method you use, Amazon SES
searches for the appropriate records in the DNS configuration of the
domain for up to 72 hours.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

