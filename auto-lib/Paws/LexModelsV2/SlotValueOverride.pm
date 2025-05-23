# Generated by default/object.tt
package Paws::LexModelsV2::SlotValueOverride;
  use Moose;
  has Shape => (is => 'ro', isa => 'Str', request_name => 'shape', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Paws::LexModelsV2::SlotValue', request_name => 'value', traits => ['NameInRequest']);
  has Values => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SlotValueOverride]', request_name => 'values', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::SlotValueOverride

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::SlotValueOverride object:

  $service_obj->Method(Att1 => { Shape => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::SlotValueOverride object:

  $result = $service_obj->Method(...);
  $result->Att1->Shape

=head1 DESCRIPTION

The slot values that Amazon Lex uses when it sets slot values in a
dialog step.

=head1 ATTRIBUTES


=head2 Shape => Str

When the shape value is C<List>, it indicates that the C<values> field
contains a list of slot values. When the value is C<Scalar>, it
indicates that the C<value> field contains a single value.


=head2 Value => L<Paws::LexModelsV2::SlotValue>

The current value of the slot.


=head2 Values => ArrayRef[L<Paws::LexModelsV2::SlotValueOverride>]

A list of one or more values that the user provided for the slot. For
example, for a slot that elicits pizza toppings, the values might be
"pepperoni" and "pineapple."



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

