# Generated by default/object.tt
package Paws::MarketplaceAgreement::GrantItem;
  use Moose;
  has DimensionKey => (is => 'ro', isa => 'Str', request_name => 'dimensionKey', traits => ['NameInRequest']);
  has MaxQuantity => (is => 'ro', isa => 'Int', request_name => 'maxQuantity', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceAgreement::GrantItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceAgreement::GrantItem object:

  $service_obj->Method(Att1 => { DimensionKey => $value, ..., MaxQuantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceAgreement::GrantItem object:

  $result = $service_obj->Method(...);
  $result->Att1->DimensionKey

=head1 DESCRIPTION

Entitlements granted to the acceptor of fixed upfront as part of
agreement execution.

=head1 ATTRIBUTES


=head2 DimensionKey => Str

Unique dimension key defined in the product document. Dimensions
represent categories of capacity in a product and are specified when
the product is listed in AWS Marketplace.


=head2 MaxQuantity => Int

Maximum amount of capacity that the buyer can be entitled to the given
dimension of the product. If C<MaxQuantity> is not provided, the buyer
will be able to use an unlimited amount of the given dimension.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceAgreement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

