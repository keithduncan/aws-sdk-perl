# Generated by default/object.tt
package Paws::MediaConnect::FrameResolution;
  use Moose;
  has FrameHeight => (is => 'ro', isa => 'Int', request_name => 'frameHeight', traits => ['NameInRequest'], required => 1);
  has FrameWidth => (is => 'ro', isa => 'Int', request_name => 'frameWidth', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::FrameResolution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::FrameResolution object:

  $service_obj->Method(Att1 => { FrameHeight => $value, ..., FrameWidth => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::FrameResolution object:

  $result = $service_obj->Method(...);
  $result->Att1->FrameHeight

=head1 DESCRIPTION

The frame resolution used by the video stream.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FrameHeight => Int

The number of pixels in the height of the video frame.


=head2 B<REQUIRED> FrameWidth => Int

The number of pixels in the width of the video frame.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

