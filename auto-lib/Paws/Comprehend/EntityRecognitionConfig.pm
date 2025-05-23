# Generated by default/object.tt
package Paws::Comprehend::EntityRecognitionConfig;
  use Moose;
  has EntityTypes => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::EntityTypesListItem]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::EntityRecognitionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::EntityRecognitionConfig object:

  $service_obj->Method(Att1 => { EntityTypes => $value, ..., EntityTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::EntityRecognitionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->EntityTypes

=head1 DESCRIPTION

Configuration required for an entity recognition model.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityTypes => ArrayRef[L<Paws::Comprehend::EntityTypesListItem>]

Up to 25 entity types that the model is trained to recognize.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

