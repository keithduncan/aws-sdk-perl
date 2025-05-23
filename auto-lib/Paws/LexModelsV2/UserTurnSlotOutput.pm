# Generated by default/object.tt
package Paws::LexModelsV2::UserTurnSlotOutput;
  use Moose;
  has SubSlots => (is => 'ro', isa => 'Paws::LexModelsV2::UserTurnSlotOutputMap', request_name => 'subSlots', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);
  has Values => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::UserTurnSlotOutput]', request_name => 'values', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UserTurnSlotOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::UserTurnSlotOutput object:

  $service_obj->Method(Att1 => { SubSlots => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::UserTurnSlotOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->SubSlots

=head1 DESCRIPTION

Contains information about a slot output by the test set execution.

=head1 ATTRIBUTES


=head2 SubSlots => L<Paws::LexModelsV2::UserTurnSlotOutputMap>

A list of items mapping the name of the subslots to information about
those subslots.


=head2 Value => Str

The value output by the slot recognition.


=head2 Values => ArrayRef[L<Paws::LexModelsV2::UserTurnSlotOutput>]

Values that are output by the slot recognition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

