# Generated by default/object.tt
package Paws::MarketplaceAgreement::Constraints;
  use Moose;
  has MultipleDimensionSelection => (is => 'ro', isa => 'Str', request_name => 'multipleDimensionSelection', traits => ['NameInRequest']);
  has QuantityConfiguration => (is => 'ro', isa => 'Str', request_name => 'quantityConfiguration', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceAgreement::Constraints

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceAgreement::Constraints object:

  $service_obj->Method(Att1 => { MultipleDimensionSelection => $value, ..., QuantityConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceAgreement::Constraints object:

  $result = $service_obj->Method(...);
  $result->Att1->MultipleDimensionSelection

=head1 DESCRIPTION

Defines limits on how the term can be configured by acceptors.

=head1 ATTRIBUTES


=head2 MultipleDimensionSelection => Str

Determines if buyers are allowed to select multiple dimensions in the
rate card. The possible values are C<Allowed> and C<Disallowed>. The
default value is C<Allowed>.


=head2 QuantityConfiguration => Str

Determines if acceptors are allowed to configure quantity for each
dimension in rate card. The possible values are C<Allowed> and
C<Disallowed>. The default value is C<Allowed>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceAgreement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

