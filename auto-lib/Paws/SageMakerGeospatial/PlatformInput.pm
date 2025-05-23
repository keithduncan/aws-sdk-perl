# Generated by default/object.tt
package Paws::SageMakerGeospatial::PlatformInput;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::PlatformInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMakerGeospatial::PlatformInput object:

  $service_obj->Method(Att1 => { ComparisonOperator => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMakerGeospatial::PlatformInput object:

  $result = $service_obj->Method(...);
  $result->Att1->ComparisonOperator

=head1 DESCRIPTION

The input structure for specifying Platform. Platform refers to the
unique name of the specific platform the instrument is attached to. For
satellites it is the name of the satellite, eg. landsat-8 (Landsat-8),
sentinel-2a.

=head1 ATTRIBUTES


=head2 ComparisonOperator => Str

The ComparisonOperator to use with PlatformInput.


=head2 B<REQUIRED> Value => Str

The value of the platform.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

