# Generated by default/object.tt
package Paws::SESv2::Details;
  use Moose;
  has RoutesDetails => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::RouteDetails]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::Details

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::Details object:

  $service_obj->Method(Att1 => { RoutesDetails => $value, ..., RoutesDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::Details object:

  $result = $service_obj->Method(...);
  $result->Att1->RoutesDetails

=head1 DESCRIPTION

An object that contains configuration details of multi-region endpoint
(global-endpoint).

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoutesDetails => ArrayRef[L<Paws::SESv2::RouteDetails>]

A list of route configuration details. Must contain exactly one route
configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

