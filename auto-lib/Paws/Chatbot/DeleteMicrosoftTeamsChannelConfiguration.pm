
package Paws::Chatbot::DeleteMicrosoftTeamsChannelConfiguration;
  use Moose;
  has ChatConfigurationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMicrosoftTeamsChannelConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delete-ms-teams-channel-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chatbot::DeleteTeamsChannelConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::DeleteMicrosoftTeamsChannelConfiguration - Arguments for method DeleteMicrosoftTeamsChannelConfiguration on L<Paws::Chatbot>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMicrosoftTeamsChannelConfiguration on the
L<AWS Chatbot|Paws::Chatbot> service. Use the attributes of this class
as arguments to method DeleteMicrosoftTeamsChannelConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMicrosoftTeamsChannelConfiguration.

=head1 SYNOPSIS

    my $chatbot = Paws->service('Chatbot');
    my $DeleteTeamsChannelConfigurationResult =
      $chatbot->DeleteMicrosoftTeamsChannelConfiguration(
      ChatConfigurationArn => 'MyChatConfigurationArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chatbot/DeleteMicrosoftTeamsChannelConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChatConfigurationArn => Str

The Amazon Resource Name (ARN) of the
MicrosoftTeamsChannelConfiguration associated with the user identity to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMicrosoftTeamsChannelConfiguration in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

