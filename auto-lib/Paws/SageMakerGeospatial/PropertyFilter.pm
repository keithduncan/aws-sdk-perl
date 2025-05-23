# Generated by default/object.tt
package Paws::SageMakerGeospatial::PropertyFilter;
  use Moose;
  has Property => (is => 'ro', isa => 'Paws::SageMakerGeospatial::Property', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::PropertyFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMakerGeospatial::PropertyFilter object:

  $service_obj->Method(Att1 => { Property => $value, ..., Property => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMakerGeospatial::PropertyFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Property

=head1 DESCRIPTION

The structure representing a single PropertyFilter.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Property => L<Paws::SageMakerGeospatial::Property>

Represents a single property to match with when searching a raster data
collection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

