# Generated by default/object.tt
package Paws::MarketplaceCatalog::SaaSProductLastModifiedDateFilterDateRange;
  use Moose;
  has AfterValue => (is => 'ro', isa => 'Str');
  has BeforeValue => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::SaaSProductLastModifiedDateFilterDateRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceCatalog::SaaSProductLastModifiedDateFilterDateRange object:

  $service_obj->Method(Att1 => { AfterValue => $value, ..., BeforeValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceCatalog::SaaSProductLastModifiedDateFilterDateRange object:

  $result = $service_obj->Method(...);
  $result->Att1->AfterValue

=head1 DESCRIPTION

Object that contains date range of the last modified date to be
filtered on. You can optionally provide a C<BeforeValue> and/or
C<AfterValue>. Both are inclusive.

=head1 ATTRIBUTES


=head2 AfterValue => Str

Date after which the SaaS product was last modified.


=head2 BeforeValue => Str

Date before which the SaaS product was last modified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

