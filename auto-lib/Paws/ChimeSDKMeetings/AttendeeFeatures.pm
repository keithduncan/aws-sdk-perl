# Generated by default/object.tt
package Paws::ChimeSDKMeetings::AttendeeFeatures;
  use Moose;
  has MaxCount => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::AttendeeFeatures

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ChimeSDKMeetings::AttendeeFeatures object:

  $service_obj->Method(Att1 => { MaxCount => $value, ..., MaxCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ChimeSDKMeetings::AttendeeFeatures object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxCount

=head1 DESCRIPTION

Lists the maximum number of attendees allowed into the meeting.

If you specify C<FHD> for C<MeetingFeatures:Video:MaxResolution>, or if
you specify C<UHD> for C<MeetingFeatures:Content:MaxResolution>, the
maximum number of attendees changes from the default of C<250> to
C<25>.

=head1 ATTRIBUTES


=head2 MaxCount => Int

The maximum number of attendees allowed into the meeting.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ChimeSDKMeetings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

