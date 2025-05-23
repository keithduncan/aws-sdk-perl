# Generated by default/object.tt
package Paws::DataZone::DataProductItem;
  use Moose;
  has GlossaryTerms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'glossaryTerms', traits => ['NameInRequest']);
  has Identifier => (is => 'ro', isa => 'Str', request_name => 'identifier', traits => ['NameInRequest'], required => 1);
  has ItemType => (is => 'ro', isa => 'Str', request_name => 'itemType', traits => ['NameInRequest'], required => 1);
  has Revision => (is => 'ro', isa => 'Str', request_name => 'revision', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::DataProductItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataZone::DataProductItem object:

  $service_obj->Method(Att1 => { GlossaryTerms => $value, ..., Revision => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataZone::DataProductItem object:

  $result = $service_obj->Method(...);
  $result->Att1->GlossaryTerms

=head1 DESCRIPTION

The data product.

=head1 ATTRIBUTES


=head2 GlossaryTerms => ArrayRef[Str|Undef]

The glossary terms of the data product.


=head2 B<REQUIRED> Identifier => Str

The ID of the data product.


=head2 B<REQUIRED> ItemType => Str

The type of the data product.


=head2 Revision => Str

The revision of the data product.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

