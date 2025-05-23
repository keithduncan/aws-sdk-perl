# Generated by default/object.tt
package Paws::LexModelsV2::ExternalSourceSetting;
  use Moose;
  has GrammarSlotTypeSetting => (is => 'ro', isa => 'Paws::LexModelsV2::GrammarSlotTypeSetting', request_name => 'grammarSlotTypeSetting', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ExternalSourceSetting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::ExternalSourceSetting object:

  $service_obj->Method(Att1 => { GrammarSlotTypeSetting => $value, ..., GrammarSlotTypeSetting => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::ExternalSourceSetting object:

  $result = $service_obj->Method(...);
  $result->Att1->GrammarSlotTypeSetting

=head1 DESCRIPTION

Provides information about the external source of the slot type's
definition.

=head1 ATTRIBUTES


=head2 GrammarSlotTypeSetting => L<Paws::LexModelsV2::GrammarSlotTypeSetting>

Settings required for a slot type based on a grammar that you provide.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

