
package Paws::SESv2::PutConfigurationSetTrackingOptions;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationSetName', required => 1);
  has CustomRedirectDomain => (is => 'ro', isa => 'Str');
  has HttpsPolicy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutConfigurationSetTrackingOptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/configuration-sets/{ConfigurationSetName}/tracking-options');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::PutConfigurationSetTrackingOptionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PutConfigurationSetTrackingOptions - Arguments for method PutConfigurationSetTrackingOptions on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConfigurationSetTrackingOptions on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method PutConfigurationSetTrackingOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutConfigurationSetTrackingOptions.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $PutConfigurationSetTrackingOptionsResponse =
      $email->PutConfigurationSetTrackingOptions(
      ConfigurationSetName => 'MyConfigurationSetName',
      CustomRedirectDomain => 'MyCustomRedirectDomain',    # OPTIONAL
      HttpsPolicy          => 'REQUIRE',                   # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutConfigurationSetTrackingOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set.



=head2 CustomRedirectDomain => Str

The domain to use to track open and click events.



=head2 HttpsPolicy => Str



Valid values are: C<"REQUIRE">, C<"REQUIRE_OPEN_ONLY">, C<"OPTIONAL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutConfigurationSetTrackingOptions in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

