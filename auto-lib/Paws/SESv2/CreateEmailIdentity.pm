
package Paws::SESv2::CreateEmailIdentity;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has DkimSigningAttributes => (is => 'ro', isa => 'Paws::SESv2::DkimSigningAttributes');
  has EmailIdentity => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEmailIdentity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/identities');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::CreateEmailIdentityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::CreateEmailIdentity - Arguments for method CreateEmailIdentity on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEmailIdentity on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method CreateEmailIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEmailIdentity.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $CreateEmailIdentityResponse = $email->CreateEmailIdentity(
      EmailIdentity         => 'MyIdentity',
      ConfigurationSetName  => 'MyConfigurationSetName',    # OPTIONAL
      DkimSigningAttributes => {
        DomainSigningAttributesOrigin => 'AWS_SES'
        , # values: AWS_SES, EXTERNAL, AWS_SES_AF_SOUTH_1, AWS_SES_EU_NORTH_1, AWS_SES_AP_SOUTH_1, AWS_SES_EU_WEST_3, AWS_SES_EU_WEST_2, AWS_SES_EU_SOUTH_1, AWS_SES_EU_WEST_1, AWS_SES_AP_NORTHEAST_3, AWS_SES_AP_NORTHEAST_2, AWS_SES_ME_SOUTH_1, AWS_SES_AP_NORTHEAST_1, AWS_SES_IL_CENTRAL_1, AWS_SES_SA_EAST_1, AWS_SES_CA_CENTRAL_1, AWS_SES_AP_SOUTHEAST_1, AWS_SES_AP_SOUTHEAST_2, AWS_SES_AP_SOUTHEAST_3, AWS_SES_EU_CENTRAL_1, AWS_SES_US_EAST_1, AWS_SES_US_EAST_2, AWS_SES_US_WEST_1, AWS_SES_US_WEST_2; OPTIONAL
        DomainSigningPrivateKey =>
          'MyPrivateKey',    # min: 1, max: 20480; OPTIONAL
        DomainSigningSelector => 'MySelector',    # min: 1, max: 63; OPTIONAL
        NextSigningKeyLength  =>
          'RSA_1024_BIT',    # values: RSA_1024_BIT, RSA_2048_BIT; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',
          Value => 'MyTagValue',

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DkimAttributes = $CreateEmailIdentityResponse->DkimAttributes;
    my $IdentityType   = $CreateEmailIdentityResponse->IdentityType;
    my $VerifiedForSendingStatus =
      $CreateEmailIdentityResponse->VerifiedForSendingStatus;

    # Returns a L<Paws::SESv2::CreateEmailIdentityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateEmailIdentity>

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

The configuration set to use by default when sending from this
identity. Note that any configuration set defined in the email sending
request takes precedence.



=head2 DkimSigningAttributes => L<Paws::SESv2::DkimSigningAttributes>

If your request includes this object, Amazon SES configures the
identity to use Bring Your Own DKIM (BYODKIM) for DKIM authentication
purposes, or, configures the key length to be used for Easy DKIM
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html).

You can only specify this object if the email identity is a domain, as
opposed to an address.



=head2 B<REQUIRED> EmailIdentity => Str

The email address or domain to verify.



=head2 Tags => ArrayRef[L<Paws::SESv2::Tag>]

An array of objects that define the tags (keys and values) to associate
with the email identity.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEmailIdentity in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

