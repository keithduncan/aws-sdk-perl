# Generated by default/object.tt
package Paws::MarketplaceAgreement::UsageBasedPricingTerm;
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str', request_name => 'currencyCode', traits => ['NameInRequest']);
  has RateCards => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceAgreement::UsageBasedRateCardItem]', request_name => 'rateCards', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceAgreement::UsageBasedPricingTerm

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceAgreement::UsageBasedPricingTerm object:

  $service_obj->Method(Att1 => { CurrencyCode => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceAgreement::UsageBasedPricingTerm object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrencyCode

=head1 DESCRIPTION

Defines a usage-based pricing model (typically, pay-as-you-go pricing),
where the customers are charged based on product usage.

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

Defines the currency for the prices mentioned in the term.


=head2 RateCards => ArrayRef[L<Paws::MarketplaceAgreement::UsageBasedRateCardItem>]

List of rate cards.


=head2 Type => Str

Category of the term.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceAgreement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

