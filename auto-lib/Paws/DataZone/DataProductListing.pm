# Generated by default/object.tt
package Paws::DataZone::DataProductListing;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has DataProductId => (is => 'ro', isa => 'Str', request_name => 'dataProductId', traits => ['NameInRequest']);
  has DataProductRevision => (is => 'ro', isa => 'Str', request_name => 'dataProductRevision', traits => ['NameInRequest']);
  has Forms => (is => 'ro', isa => 'Str', request_name => 'forms', traits => ['NameInRequest']);
  has GlossaryTerms => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::DetailedGlossaryTerm]', request_name => 'glossaryTerms', traits => ['NameInRequest']);
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::ListingSummary]', request_name => 'items', traits => ['NameInRequest']);
  has OwningProjectId => (is => 'ro', isa => 'Str', request_name => 'owningProjectId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::DataProductListing

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataZone::DataProductListing object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., OwningProjectId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataZone::DataProductListing object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

The data product listing.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp at which the data product listing was created.


=head2 DataProductId => Str

The ID of the data product listing.


=head2 DataProductRevision => Str

The revision of the data product listing.


=head2 Forms => Str

The metadata forms of the data product listing.


=head2 GlossaryTerms => ArrayRef[L<Paws::DataZone::DetailedGlossaryTerm>]

The glossary terms of the data product listing.


=head2 Items => ArrayRef[L<Paws::DataZone::ListingSummary>]

The data assets of the data product listing.


=head2 OwningProjectId => Str

The ID of the owning project of the data product listing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

