
package Paws::SESv2::GetEmailIdentity;
  use Moose;
  has EmailIdentity => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EmailIdentity', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEmailIdentity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/identities/{EmailIdentity}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::GetEmailIdentityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetEmailIdentity - Arguments for method GetEmailIdentity on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEmailIdentity on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method GetEmailIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEmailIdentity.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $GetEmailIdentityResponse = $email->GetEmailIdentity(
      EmailIdentity => 'MyIdentity',

    );

    # Results:
    my $ConfigurationSetName = $GetEmailIdentityResponse->ConfigurationSetName;
    my $DkimAttributes       = $GetEmailIdentityResponse->DkimAttributes;
    my $FeedbackForwardingStatus =
      $GetEmailIdentityResponse->FeedbackForwardingStatus;
    my $IdentityType       = $GetEmailIdentityResponse->IdentityType;
    my $MailFromAttributes = $GetEmailIdentityResponse->MailFromAttributes;
    my $Policies           = $GetEmailIdentityResponse->Policies;
    my $Tags               = $GetEmailIdentityResponse->Tags;
    my $VerificationInfo   = $GetEmailIdentityResponse->VerificationInfo;
    my $VerificationStatus = $GetEmailIdentityResponse->VerificationStatus;
    my $VerifiedForSendingStatus =
      $GetEmailIdentityResponse->VerifiedForSendingStatus;

    # Returns a L<Paws::SESv2::GetEmailIdentityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetEmailIdentity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmailIdentity => Str

The email identity.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEmailIdentity in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

