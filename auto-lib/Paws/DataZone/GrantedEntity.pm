# Generated by default/object.tt
package Paws::DataZone::GrantedEntity;
  use Moose;
  has Listing => (is => 'ro', isa => 'Paws::DataZone::ListingRevision', request_name => 'listing', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GrantedEntity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataZone::GrantedEntity object:

  $service_obj->Method(Att1 => { Listing => $value, ..., Listing => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataZone::GrantedEntity object:

  $result = $service_obj->Method(...);
  $result->Att1->Listing

=head1 DESCRIPTION

The details of a listing for which a subscription is granted.

=head1 ATTRIBUTES


=head2 Listing => L<Paws::DataZone::ListingRevision>

The listing for which a subscription is granted.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

