
package Paws::SESv2::CreateCustomVerificationEmailTemplate;
  use Moose;
  has FailureRedirectionURL => (is => 'ro', isa => 'Str', required => 1);
  has FromEmailAddress => (is => 'ro', isa => 'Str', required => 1);
  has SuccessRedirectionURL => (is => 'ro', isa => 'Str', required => 1);
  has TemplateContent => (is => 'ro', isa => 'Str', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);
  has TemplateSubject => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomVerificationEmailTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/custom-verification-email-templates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::CreateCustomVerificationEmailTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::CreateCustomVerificationEmailTemplate - Arguments for method CreateCustomVerificationEmailTemplate on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomVerificationEmailTemplate on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method CreateCustomVerificationEmailTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomVerificationEmailTemplate.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $CreateCustomVerificationEmailTemplateResponse =
      $email->CreateCustomVerificationEmailTemplate(
      FailureRedirectionURL => 'MyFailureRedirectionURL',
      FromEmailAddress      => 'MyEmailAddress',
      SuccessRedirectionURL => 'MySuccessRedirectionURL',
      TemplateContent       => 'MyTemplateContent',
      TemplateName          => 'MyEmailTemplateName',
      TemplateSubject       => 'MyEmailTemplateSubject',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateCustomVerificationEmailTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailureRedirectionURL => Str

The URL that the recipient of the verification email is sent to if his
or her address is not successfully verified.



=head2 B<REQUIRED> FromEmailAddress => Str

The email address that the custom verification email is sent from.



=head2 B<REQUIRED> SuccessRedirectionURL => Str

The URL that the recipient of the verification email is sent to if his
or her address is successfully verified.



=head2 B<REQUIRED> TemplateContent => Str

The content of the custom verification email. The total size of the
email must be less than 10 MB. The message body may contain HTML, with
some limitations. For more information, see Custom verification email
frequently asked questions
(https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom-faq)
in the I<Amazon SES Developer Guide>.



=head2 B<REQUIRED> TemplateName => Str

The name of the custom verification email template.



=head2 B<REQUIRED> TemplateSubject => Str

The subject line of the custom verification email.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomVerificationEmailTemplate in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

