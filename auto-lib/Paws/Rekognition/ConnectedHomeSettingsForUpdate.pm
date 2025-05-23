# Generated by default/object.tt
package Paws::Rekognition::ConnectedHomeSettingsForUpdate;
  use Moose;
  has Labels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MinConfidence => (is => 'ro', isa => 'Num');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ConnectedHomeSettingsForUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::ConnectedHomeSettingsForUpdate object:

  $service_obj->Method(Att1 => { Labels => $value, ..., MinConfidence => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::ConnectedHomeSettingsForUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Labels

=head1 DESCRIPTION

The label detection settings you want to use in your stream processor.
This includes the labels you want the stream processor to detect and
the minimum confidence level allowed to label objects.

=head1 ATTRIBUTES


=head2 Labels => ArrayRef[Str|Undef]

Specifies what you want to detect in the video, such as people,
packages, or pets. The current valid labels you can include in this
list are: "PERSON", "PET", "PACKAGE", and "ALL".


=head2 MinConfidence => Num

The minimum confidence required to label an object in the video.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

