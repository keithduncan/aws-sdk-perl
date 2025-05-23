# Generated by default/object.tt
package Paws::Rekognition::StartTechnicalCueDetectionFilter;
  use Moose;
  has BlackFrame => (is => 'ro', isa => 'Paws::Rekognition::BlackFrame');
  has MinSegmentConfidence => (is => 'ro', isa => 'Num');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartTechnicalCueDetectionFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::StartTechnicalCueDetectionFilter object:

  $service_obj->Method(Att1 => { BlackFrame => $value, ..., MinSegmentConfidence => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::StartTechnicalCueDetectionFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->BlackFrame

=head1 DESCRIPTION

Filters for the technical segments returned by GetSegmentDetection. For
more information, see StartSegmentDetectionFilters.

=head1 ATTRIBUTES


=head2 BlackFrame => L<Paws::Rekognition::BlackFrame>

A filter that allows you to control the black frame detection by
specifying the black levels and pixel coverage of black pixels in a
frame. Videos can come from multiple sources, formats, and time
periods, with different standards and varying noise levels for black
frames that need to be accounted for.


=head2 MinSegmentConfidence => Num

Specifies the minimum confidence that Amazon Rekognition Video must
have in order to return a detected segment. Confidence represents how
certain Amazon Rekognition is that a segment is correctly identified. 0
is the lowest confidence. 100 is the highest confidence. Amazon
Rekognition Video doesn't return any segments with a confidence level
lower than this specified value.

If you don't specify C<MinSegmentConfidence>, C<GetSegmentDetection>
returns segments with confidence values greater than or equal to 50
percent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

