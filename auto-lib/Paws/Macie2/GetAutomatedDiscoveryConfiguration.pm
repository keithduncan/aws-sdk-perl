
package Paws::Macie2::GetAutomatedDiscoveryConfiguration;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAutomatedDiscoveryConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/automated-discovery/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::GetAutomatedDiscoveryConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetAutomatedDiscoveryConfiguration - Arguments for method GetAutomatedDiscoveryConfiguration on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAutomatedDiscoveryConfiguration on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method GetAutomatedDiscoveryConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAutomatedDiscoveryConfiguration.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $GetAutomatedDiscoveryConfigurationResponse =
      $macie2->GetAutomatedDiscoveryConfiguration();

    # Results:
    my $AutoEnableOrganizationMembers =
      $GetAutomatedDiscoveryConfigurationResponse
      ->AutoEnableOrganizationMembers;
    my $ClassificationScopeId =
      $GetAutomatedDiscoveryConfigurationResponse->ClassificationScopeId;
    my $DisabledAt = $GetAutomatedDiscoveryConfigurationResponse->DisabledAt;
    my $FirstEnabledAt =
      $GetAutomatedDiscoveryConfigurationResponse->FirstEnabledAt;
    my $LastUpdatedAt =
      $GetAutomatedDiscoveryConfigurationResponse->LastUpdatedAt;
    my $SensitivityInspectionTemplateId =
      $GetAutomatedDiscoveryConfigurationResponse
      ->SensitivityInspectionTemplateId;
    my $Status = $GetAutomatedDiscoveryConfigurationResponse->Status;

 # Returns a L<Paws::Macie2::GetAutomatedDiscoveryConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/GetAutomatedDiscoveryConfiguration>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAutomatedDiscoveryConfiguration in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

