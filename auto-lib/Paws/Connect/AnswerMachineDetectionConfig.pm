# Generated by default/object.tt
package Paws::Connect::AnswerMachineDetectionConfig;
  use Moose;
  has AwaitAnswerMachinePrompt => (is => 'ro', isa => 'Bool');
  has EnableAnswerMachineDetection => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::AnswerMachineDetectionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::AnswerMachineDetectionConfig object:

  $service_obj->Method(Att1 => { AwaitAnswerMachinePrompt => $value, ..., EnableAnswerMachineDetection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::AnswerMachineDetectionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AwaitAnswerMachinePrompt

=head1 DESCRIPTION

Configuration of the answering machine detection.

=head1 ATTRIBUTES


=head2 AwaitAnswerMachinePrompt => Bool

Wait for the answering machine prompt.


=head2 EnableAnswerMachineDetection => Bool

The flag to indicate if answer machine detection analysis needs to be
performed for a voice call. If set to C<true>, C<TrafficType> must be
set as C<CAMPAIGN>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

