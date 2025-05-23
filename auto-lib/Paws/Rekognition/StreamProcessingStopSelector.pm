# Generated by default/object.tt
package Paws::Rekognition::StreamProcessingStopSelector;
  use Moose;
  has MaxDurationInSeconds => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StreamProcessingStopSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::StreamProcessingStopSelector object:

  $service_obj->Method(Att1 => { MaxDurationInSeconds => $value, ..., MaxDurationInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::StreamProcessingStopSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxDurationInSeconds

=head1 DESCRIPTION

Specifies when to stop processing the stream. You can specify a maximum
amount of time to process the video.

=head1 ATTRIBUTES


=head2 MaxDurationInSeconds => Int

Specifies the maximum amount of time in seconds that you want the
stream to be processed. The largest amount of time is 2 minutes. The
default is 10 seconds.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

