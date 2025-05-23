
package Paws::SESv2::GetConfigurationSet;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationSetName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConfigurationSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/configuration-sets/{ConfigurationSetName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::GetConfigurationSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetConfigurationSet - Arguments for method GetConfigurationSet on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfigurationSet on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method GetConfigurationSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfigurationSet.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $GetConfigurationSetResponse = $email->GetConfigurationSet(
      ConfigurationSetName => 'MyConfigurationSetName',

    );

    # Results:
    my $ArchivingOptions = $GetConfigurationSetResponse->ArchivingOptions;
    my $ConfigurationSetName =
      $GetConfigurationSetResponse->ConfigurationSetName;
    my $DeliveryOptions    = $GetConfigurationSetResponse->DeliveryOptions;
    my $ReputationOptions  = $GetConfigurationSetResponse->ReputationOptions;
    my $SendingOptions     = $GetConfigurationSetResponse->SendingOptions;
    my $SuppressionOptions = $GetConfigurationSetResponse->SuppressionOptions;
    my $Tags               = $GetConfigurationSetResponse->Tags;
    my $TrackingOptions    = $GetConfigurationSetResponse->TrackingOptions;
    my $VdmOptions         = $GetConfigurationSetResponse->VdmOptions;

    # Returns a L<Paws::SESv2::GetConfigurationSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetConfigurationSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfigurationSet in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

