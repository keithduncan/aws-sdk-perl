# Generated by default/object.tt
package Paws::MarketplaceCatalog::OfferSummary;
  use Moose;
  has AvailabilityEndDate => (is => 'ro', isa => 'Str');
  has BuyerAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');
  has ProductId => (is => 'ro', isa => 'Str');
  has ReleaseDate => (is => 'ro', isa => 'Str');
  has ResaleAuthorizationId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Targeting => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::OfferSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceCatalog::OfferSummary object:

  $service_obj->Method(Att1 => { AvailabilityEndDate => $value, ..., Targeting => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceCatalog::OfferSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityEndDate

=head1 DESCRIPTION

Summarized information about an offer.

=head1 ATTRIBUTES


=head2 AvailabilityEndDate => Str

The availability end date of the offer.


=head2 BuyerAccounts => ArrayRef[Str|Undef]

The buyer accounts in the offer.


=head2 Name => Str

The name of the offer.


=head2 ProductId => Str

The product ID of the offer.


=head2 ReleaseDate => Str

The release date of the offer.


=head2 ResaleAuthorizationId => Str

The ResaleAuthorizationId of the offer.


=head2 State => Str

The status of the offer.


=head2 Targeting => ArrayRef[Str|Undef]

The targeting in the offer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

