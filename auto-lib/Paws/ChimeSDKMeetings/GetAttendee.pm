
package Paws::ChimeSDKMeetings::GetAttendee;
  use Moose;
  has AttendeeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AttendeeId', required => 1);
  has MeetingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MeetingId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAttendee');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meetings/{MeetingId}/attendees/{AttendeeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMeetings::GetAttendeeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::GetAttendee - Arguments for method GetAttendee on L<Paws::ChimeSDKMeetings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAttendee on the
L<Amazon Chime SDK Meetings|Paws::ChimeSDKMeetings> service. Use the attributes of this class
as arguments to method GetAttendee.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAttendee.

=head1 SYNOPSIS

    my $meetings-chime = Paws->service('ChimeSDKMeetings');
    my $GetAttendeeResponse = $meetings -chime->GetAttendee(
      AttendeeId => 'MyGuidString',
      MeetingId  => 'MyGuidString',

    );

    # Results:
    my $Attendee = $GetAttendeeResponse->Attendee;

    # Returns a L<Paws::ChimeSDKMeetings::GetAttendeeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/meetings-chime/GetAttendee>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttendeeId => Str

The Amazon Chime SDK attendee ID.



=head2 B<REQUIRED> MeetingId => Str

The Amazon Chime SDK meeting ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAttendee in L<Paws::ChimeSDKMeetings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

