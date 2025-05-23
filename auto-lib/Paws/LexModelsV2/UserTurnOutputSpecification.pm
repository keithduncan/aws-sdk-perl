# Generated by default/object.tt
package Paws::LexModelsV2::UserTurnOutputSpecification;
  use Moose;
  has ActiveContexts => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::ActiveContext]', request_name => 'activeContexts', traits => ['NameInRequest']);
  has Intent => (is => 'ro', isa => 'Paws::LexModelsV2::UserTurnIntentOutput', request_name => 'intent', traits => ['NameInRequest'], required => 1);
  has Transcript => (is => 'ro', isa => 'Str', request_name => 'transcript', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UserTurnOutputSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::UserTurnOutputSpecification object:

  $service_obj->Method(Att1 => { ActiveContexts => $value, ..., Transcript => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::UserTurnOutputSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveContexts

=head1 DESCRIPTION

Contains results that are output for the user turn by the test
execution.

=head1 ATTRIBUTES


=head2 ActiveContexts => ArrayRef[L<Paws::LexModelsV2::ActiveContext>]

The contexts that are active in the turn.


=head2 B<REQUIRED> Intent => L<Paws::LexModelsV2::UserTurnIntentOutput>

Contains information about the intent.


=head2 Transcript => Str

The transcript that is output for the user turn by the test execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

