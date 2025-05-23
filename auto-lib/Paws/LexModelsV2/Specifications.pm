# Generated by default/object.tt
package Paws::LexModelsV2::Specifications;
  use Moose;
  has SlotTypeId => (is => 'ro', isa => 'Str', request_name => 'slotTypeId', traits => ['NameInRequest'], required => 1);
  has ValueElicitationSetting => (is => 'ro', isa => 'Paws::LexModelsV2::SubSlotValueElicitationSetting', request_name => 'valueElicitationSetting', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::Specifications

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::Specifications object:

  $service_obj->Method(Att1 => { SlotTypeId => $value, ..., ValueElicitationSetting => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::Specifications object:

  $result = $service_obj->Method(...);
  $result->Att1->SlotTypeId

=head1 DESCRIPTION

Subslot specifications.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SlotTypeId => Str

The unique identifier assigned to the slot type.


=head2 B<REQUIRED> ValueElicitationSetting => L<Paws::LexModelsV2::SubSlotValueElicitationSetting>

Specifies the elicitation setting details for constituent sub slots of
a composite slot.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

