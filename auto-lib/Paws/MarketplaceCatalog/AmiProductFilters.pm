# Generated by default/object.tt
package Paws::MarketplaceCatalog::AmiProductFilters;
  use Moose;
  has EntityId => (is => 'ro', isa => 'Paws::MarketplaceCatalog::AmiProductEntityIdFilter');
  has LastModifiedDate => (is => 'ro', isa => 'Paws::MarketplaceCatalog::AmiProductLastModifiedDateFilter');
  has ProductTitle => (is => 'ro', isa => 'Paws::MarketplaceCatalog::AmiProductTitleFilter');
  has Visibility => (is => 'ro', isa => 'Paws::MarketplaceCatalog::AmiProductVisibilityFilter');

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::AmiProductFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceCatalog::AmiProductFilters object:

  $service_obj->Method(Att1 => { EntityId => $value, ..., Visibility => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceCatalog::AmiProductFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->EntityId

=head1 DESCRIPTION

Object containing all the filter fields for AMI products. Client can
add only one wildcard filter and a maximum of 8 filters in a single
C<ListEntities> request.

=head1 ATTRIBUTES


=head2 EntityId => L<Paws::MarketplaceCatalog::AmiProductEntityIdFilter>

Unique identifier for the AMI product.


=head2 LastModifiedDate => L<Paws::MarketplaceCatalog::AmiProductLastModifiedDateFilter>

The last date on which the AMI product was modified.


=head2 ProductTitle => L<Paws::MarketplaceCatalog::AmiProductTitleFilter>

The title of the AMI product.


=head2 Visibility => L<Paws::MarketplaceCatalog::AmiProductVisibilityFilter>

The visibility of the AMI product.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

