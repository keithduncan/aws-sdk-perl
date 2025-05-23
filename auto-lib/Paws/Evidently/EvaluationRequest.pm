# Generated by default/object.tt
package Paws::Evidently::EvaluationRequest;
  use Moose;
  has EntityId => (is => 'ro', isa => 'Str', request_name => 'entityId', traits => ['NameInRequest'], required => 1);
  has EvaluationContext => (is => 'ro', isa => 'Str', request_name => 'evaluationContext', traits => ['NameInRequest']);
  has Feature => (is => 'ro', isa => 'Str', request_name => 'feature', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::EvaluationRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Evidently::EvaluationRequest object:

  $service_obj->Method(Att1 => { EntityId => $value, ..., Feature => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Evidently::EvaluationRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->EntityId

=head1 DESCRIPTION

This structure assigns a feature variation to one user session.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityId => Str

An internal ID that represents a unique user session of the
application. This C<entityID> is checked against any override rules
assigned for this feature.


=head2 EvaluationContext => Str

A JSON block of attributes that you can optionally pass in. This JSON
block is included in the evaluation events sent to Evidently from the
user session.


=head2 B<REQUIRED> Feature => Str

The name of the feature being evaluated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

