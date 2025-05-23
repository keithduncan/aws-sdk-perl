# Generated by default/object.tt
package Paws::Rekognition::StreamProcessorSettingsForUpdate;
  use Moose;
  has ConnectedHomeForUpdate => (is => 'ro', isa => 'Paws::Rekognition::ConnectedHomeSettingsForUpdate');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StreamProcessorSettingsForUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::StreamProcessorSettingsForUpdate object:

  $service_obj->Method(Att1 => { ConnectedHomeForUpdate => $value, ..., ConnectedHomeForUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::StreamProcessorSettingsForUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectedHomeForUpdate

=head1 DESCRIPTION

The stream processor settings that you want to update. C<ConnectedHome>
settings can be updated to detect different labels with a different
minimum confidence.

=head1 ATTRIBUTES


=head2 ConnectedHomeForUpdate => L<Paws::Rekognition::ConnectedHomeSettingsForUpdate>

The label detection settings you want to use for your stream processor.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

