# Generated by default/object.tt
package Paws::SageMaker::CollectionConfig;
  use Moose;
  has VectorConfig => (is => 'ro', isa => 'Paws::SageMaker::VectorConfig');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CollectionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::CollectionConfig object:

  $service_obj->Method(Att1 => { VectorConfig => $value, ..., VectorConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::CollectionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->VectorConfig

=head1 DESCRIPTION

Configuration for your collection.

=head1 ATTRIBUTES


=head2 VectorConfig => L<Paws::SageMaker::VectorConfig>

Configuration for your vector collection type.

=over

=item *

C<Dimension>: The number of elements in your vector.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

