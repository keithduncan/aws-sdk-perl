# Generated by default/object.tt
package Paws::ChimeSDKMeetings::MeetingFeaturesConfiguration;
  use Moose;
  has Attendee => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::AttendeeFeatures');
  has Audio => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::AudioFeatures');
  has Content => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::ContentFeatures');
  has Video => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::VideoFeatures');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::MeetingFeaturesConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ChimeSDKMeetings::MeetingFeaturesConfiguration object:

  $service_obj->Method(Att1 => { Attendee => $value, ..., Video => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ChimeSDKMeetings::MeetingFeaturesConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Attendee

=head1 DESCRIPTION

The configuration settings of the features available to a meeting.

=head1 ATTRIBUTES


=head2 Attendee => L<Paws::ChimeSDKMeetings::AttendeeFeatures>

The configuration settings for the attendee features available to a
meeting.


=head2 Audio => L<Paws::ChimeSDKMeetings::AudioFeatures>

The configuration settings for the audio features available to a
meeting.


=head2 Content => L<Paws::ChimeSDKMeetings::ContentFeatures>

The configuration settings for the content features available to a
meeting.


=head2 Video => L<Paws::ChimeSDKMeetings::VideoFeatures>

The configuration settings for the video features available to a
meeting.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ChimeSDKMeetings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

