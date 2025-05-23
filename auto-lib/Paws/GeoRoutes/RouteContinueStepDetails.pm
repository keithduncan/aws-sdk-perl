# Generated by default/object.tt
package Paws::GeoRoutes::RouteContinueStepDetails;
  use Moose;
  has Intersection => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::LocalizedString]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::RouteContinueStepDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GeoRoutes::RouteContinueStepDetails object:

  $service_obj->Method(Att1 => { Intersection => $value, ..., Intersection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GeoRoutes::RouteContinueStepDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Intersection

=head1 DESCRIPTION

Details related to the continue step.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Intersection => ArrayRef[L<Paws::GeoRoutes::LocalizedString>]

Name of the intersection, if applicable to the step.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GeoRoutes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

