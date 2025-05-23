# Generated by default/object.tt
package Paws::IVSRealTime::PipConfiguration;
  use Moose;
  has FeaturedParticipantAttribute => (is => 'ro', isa => 'Str', request_name => 'featuredParticipantAttribute', traits => ['NameInRequest']);
  has GridGap => (is => 'ro', isa => 'Int', request_name => 'gridGap', traits => ['NameInRequest']);
  has OmitStoppedVideo => (is => 'ro', isa => 'Bool', request_name => 'omitStoppedVideo', traits => ['NameInRequest']);
  has PipBehavior => (is => 'ro', isa => 'Str', request_name => 'pipBehavior', traits => ['NameInRequest']);
  has PipHeight => (is => 'ro', isa => 'Int', request_name => 'pipHeight', traits => ['NameInRequest']);
  has PipOffset => (is => 'ro', isa => 'Int', request_name => 'pipOffset', traits => ['NameInRequest']);
  has PipParticipantAttribute => (is => 'ro', isa => 'Str', request_name => 'pipParticipantAttribute', traits => ['NameInRequest']);
  has PipPosition => (is => 'ro', isa => 'Str', request_name => 'pipPosition', traits => ['NameInRequest']);
  has PipWidth => (is => 'ro', isa => 'Int', request_name => 'pipWidth', traits => ['NameInRequest']);
  has VideoFillMode => (is => 'ro', isa => 'Str', request_name => 'videoFillMode', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::PipConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IVSRealTime::PipConfiguration object:

  $service_obj->Method(Att1 => { FeaturedParticipantAttribute => $value, ..., VideoFillMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IVSRealTime::PipConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->FeaturedParticipantAttribute

=head1 DESCRIPTION

Configuration information specific to Picture-in-Picture (PiP) layout,
for server-side composition
(https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/server-side-composition.html).

=head1 ATTRIBUTES


=head2 FeaturedParticipantAttribute => Str

This attribute name identifies the featured slot. A participant with
this attribute set to C<"true"> (as a string value) in
ParticipantTokenConfiguration is placed in the featured slot. Default:
C<""> (no featured participant).


=head2 GridGap => Int

Specifies the spacing between participant tiles in pixels. Default:
C<0>.


=head2 OmitStoppedVideo => Bool

Determines whether to omit participants with stopped video in the
composition. Default: C<false>.


=head2 PipBehavior => Str

Defines PiP behavior when all participants have left: C<STATIC>
(maintains original position/size) or C<DYNAMIC> (expands to full
composition). Default: C<STATIC>.


=head2 PipHeight => Int

Specifies the height of the PiP window in pixels. When this is not set
explicitly, C<pipHeight>E<rsquo>s value will be based on the size of
the composition and the aspect ratio of the participantE<rsquo>s video.


=head2 PipOffset => Int

Sets the PiP windowE<rsquo>s offset position in pixels from the closest
edges determined by C<PipPosition>. Default: C<0>.


=head2 PipParticipantAttribute => Str

Specifies the participant for the PiP window. A participant with this
attribute set to C<"true"> (as a string value) in
ParticipantTokenConfiguration is placed in the PiP slot. Default: C<"">
(no PiP participant).


=head2 PipPosition => Str

Determines the corner position of the PiP window. Default:
C<BOTTOM_RIGHT>.


=head2 PipWidth => Int

Specifies the width of the PiP window in pixels. When this is not set
explicitly, C<pipWidth>E<rsquo>s value will be based on the size of the
composition and the aspect ratio of the participantE<rsquo>s video.


=head2 VideoFillMode => Str

Defines how video content fits within the participant tile: C<FILL>
(stretched), C<COVER> (cropped), or C<CONTAIN> (letterboxed). Default:
C<COVER>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

