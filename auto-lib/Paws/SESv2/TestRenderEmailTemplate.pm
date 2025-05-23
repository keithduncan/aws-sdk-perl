
package Paws::SESv2::TestRenderEmailTemplate;
  use Moose;
  has TemplateData => (is => 'ro', isa => 'Str', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestRenderEmailTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/templates/{TemplateName}/render');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::TestRenderEmailTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::TestRenderEmailTemplate - Arguments for method TestRenderEmailTemplate on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestRenderEmailTemplate on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method TestRenderEmailTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestRenderEmailTemplate.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $TestRenderEmailTemplateResponse = $email->TestRenderEmailTemplate(
      TemplateData => 'MyEmailTemplateData',
      TemplateName => 'MyEmailTemplateName',

    );

    # Results:
    my $RenderedTemplate = $TestRenderEmailTemplateResponse->RenderedTemplate;

    # Returns a L<Paws::SESv2::TestRenderEmailTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/TestRenderEmailTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateData => Str

A list of replacement values to apply to the template. This parameter
is a JSON object, typically consisting of key-value pairs in which the
keys correspond to replacement tags in the email template.



=head2 B<REQUIRED> TemplateName => Str

The name of the template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestRenderEmailTemplate in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

