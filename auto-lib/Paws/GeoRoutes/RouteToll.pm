# Generated by default/object.tt
package Paws::GeoRoutes::RouteToll;
  use Moose;
  has Country => (is => 'ro', isa => 'Str');
  has PaymentSites => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::RouteTollPaymentSite]', required => 1);
  has Rates => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::RouteTollRate]', required => 1);
  has Systems => (is => 'ro', isa => 'ArrayRef[Int]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::RouteToll

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GeoRoutes::RouteToll object:

  $service_obj->Method(Att1 => { Country => $value, ..., Systems => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GeoRoutes::RouteToll object:

  $result = $service_obj->Method(...);
  $result->Att1->Country

=head1 DESCRIPTION

Provides details about toll information along a route, including the
payment sites, applicable toll rates, toll systems, and the country
associated with the toll collection.

=head1 ATTRIBUTES


=head2 Country => Str

The alpha-2 or alpha-3 character code for the country.


=head2 B<REQUIRED> PaymentSites => ArrayRef[L<Paws::GeoRoutes::RouteTollPaymentSite>]

Locations or sites where the toll fare is collected.


=head2 B<REQUIRED> Rates => ArrayRef[L<Paws::GeoRoutes::RouteTollRate>]

Toll rates that need to be paid to travel this leg of the route.


=head2 B<REQUIRED> Systems => ArrayRef[Int]

Toll systems are authorities that collect payments for the toll.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GeoRoutes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

