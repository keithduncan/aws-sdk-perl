# Generated by default/object.tt
package Paws::WAFV2::APIKeySummary;
  use Moose;
  has APIKey => (is => 'ro', isa => 'Str');
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has TokenDomains => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Version => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::APIKeySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFV2::APIKeySummary object:

  $service_obj->Method(Att1 => { APIKey => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFV2::APIKeySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->APIKey

=head1 DESCRIPTION

Information for a single API key.

API keys are required for the integration of the CAPTCHA API in your
JavaScript client applications. The API lets you customize the
placement and characteristics of the CAPTCHA puzzle for your end users.
For more information about the CAPTCHA JavaScript integration, see WAF
client application integration
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
in the I<WAF Developer Guide>.

=head1 ATTRIBUTES


=head2 APIKey => Str

The generated, encrypted API key. You can copy this for use in your
JavaScript CAPTCHA integration.


=head2 CreationTimestamp => Str

The date and time that the key was created.


=head2 TokenDomains => ArrayRef[Str|Undef]

The token domains that are defined in this API key.


=head2 Version => Int

Internal value used by WAF to manage the key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

