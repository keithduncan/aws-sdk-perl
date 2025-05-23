# Generated by default/object.tt
package Paws::LexModelsV2::IntentOverride;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Slots => (is => 'ro', isa => 'Paws::LexModelsV2::SlotValueOverrideMap', request_name => 'slots', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::IntentOverride

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::IntentOverride object:

  $service_obj->Method(Att1 => { Name => $value, ..., Slots => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::IntentOverride object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Override settings to configure the intent state.

=head1 ATTRIBUTES


=head2 Name => Str

The name of the intent. Only required when you're switching intents.


=head2 Slots => L<Paws::LexModelsV2::SlotValueOverrideMap>

A map of all of the slot value overrides for the intent. The name of
the slot maps to the value of the slot. Slots that are not included in
the map aren't overridden.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

