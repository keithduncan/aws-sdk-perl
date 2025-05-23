
package Paws::AppConfig::ValidateConfiguration;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationId', required => 1);
  has ConfigurationProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationProfileId', required => 1);
  has ConfigurationVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'configuration_version', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/validators');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::ValidateConfiguration - Arguments for method ValidateConfiguration on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ValidateConfiguration on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method ValidateConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ValidateConfiguration.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    # To validate a configuration
    # The following validate-configuration example uses the validators in a
    # configuration profile to validate a configuration.
    $appconfig->ValidateConfiguration(
      'ApplicationId'          => 'abc1234',
      'ConfigurationProfileId' => 'ur8hx2f',
      'ConfigurationVersion'   => 1
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/ValidateConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The application ID.



=head2 B<REQUIRED> ConfigurationProfileId => Str

The configuration profile ID.



=head2 B<REQUIRED> ConfigurationVersion => Str

The version of the configuration to validate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ValidateConfiguration in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

