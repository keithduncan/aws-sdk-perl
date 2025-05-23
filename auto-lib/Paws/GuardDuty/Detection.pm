# Generated by default/object.tt
package Paws::GuardDuty::Detection;
  use Moose;
  has Anomaly => (is => 'ro', isa => 'Paws::GuardDuty::Anomaly', request_name => 'anomaly', traits => ['NameInRequest']);
  has Sequence => (is => 'ro', isa => 'Paws::GuardDuty::Sequence', request_name => 'sequence', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Detection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Detection object:

  $service_obj->Method(Att1 => { Anomaly => $value, ..., Sequence => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Detection object:

  $result = $service_obj->Method(...);
  $result->Att1->Anomaly

=head1 DESCRIPTION

Contains information about the detected behavior.

=head1 ATTRIBUTES


=head2 Anomaly => L<Paws::GuardDuty::Anomaly>

The details about the anomalous activity that caused GuardDuty to
generate the finding.


=head2 Sequence => L<Paws::GuardDuty::Sequence>

The details about the attack sequence.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

