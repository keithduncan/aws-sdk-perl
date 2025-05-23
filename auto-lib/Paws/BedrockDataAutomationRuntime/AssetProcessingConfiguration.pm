# Generated by default/object.tt
package Paws::BedrockDataAutomationRuntime::AssetProcessingConfiguration;
  use Moose;
  has Video => (is => 'ro', isa => 'Paws::BedrockDataAutomationRuntime::VideoAssetProcessingConfiguration', request_name => 'video', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomationRuntime::AssetProcessingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockDataAutomationRuntime::AssetProcessingConfiguration object:

  $service_obj->Method(Att1 => { Video => $value, ..., Video => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockDataAutomationRuntime::AssetProcessingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Video

=head1 DESCRIPTION

Config containing asset processing related knobs for all modalities

=head1 ATTRIBUTES


=head2 Video => L<Paws::BedrockDataAutomationRuntime::VideoAssetProcessingConfiguration>

Video asset processing configuration



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockDataAutomationRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

