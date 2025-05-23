# Generated by default/object.tt
package Paws::Connect::RealTimeContactAnalysisTranscriptItemRedaction;
  use Moose;
  has CharacterOffsets => (is => 'ro', isa => 'ArrayRef[Paws::Connect::RealTimeContactAnalysisCharacterInterval]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::RealTimeContactAnalysisTranscriptItemRedaction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::RealTimeContactAnalysisTranscriptItemRedaction object:

  $service_obj->Method(Att1 => { CharacterOffsets => $value, ..., CharacterOffsets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::RealTimeContactAnalysisTranscriptItemRedaction object:

  $result = $service_obj->Method(...);
  $result->Att1->CharacterOffsets

=head1 DESCRIPTION

Object describing redaction applied to the segment.

=head1 ATTRIBUTES


=head2 CharacterOffsets => ArrayRef[L<Paws::Connect::RealTimeContactAnalysisCharacterInterval>]

List of character intervals each describing a part of the text that was
redacted. For C<OutputType.Raw>, part of the original text that
contains data that can be redacted. For C< OutputType.Redacted>, part
of the string with redaction tag.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

