# Generated by default/object.tt
package Paws::DataZone::DataProductResultItem;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has CreatedBy => (is => 'ro', isa => 'Str', request_name => 'createdBy', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DomainId => (is => 'ro', isa => 'Str', request_name => 'domainId', traits => ['NameInRequest'], required => 1);
  has FirstRevisionCreatedAt => (is => 'ro', isa => 'Str', request_name => 'firstRevisionCreatedAt', traits => ['NameInRequest']);
  has FirstRevisionCreatedBy => (is => 'ro', isa => 'Str', request_name => 'firstRevisionCreatedBy', traits => ['NameInRequest']);
  has GlossaryTerms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'glossaryTerms', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has OwningProjectId => (is => 'ro', isa => 'Str', request_name => 'owningProjectId', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::DataProductResultItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataZone::DataProductResultItem object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., OwningProjectId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataZone::DataProductResultItem object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

The data product.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp at which the data product was created.


=head2 CreatedBy => Str

The user who created the data product.


=head2 Description => Str

The description of the data product.


=head2 B<REQUIRED> DomainId => Str

The ID of the domain where the data product lives.


=head2 FirstRevisionCreatedAt => Str

The timestamp at which first revision of the data product was created.


=head2 FirstRevisionCreatedBy => Str

The user who created the first revision of the data product.


=head2 GlossaryTerms => ArrayRef[Str|Undef]

The glossary terms of the data product.


=head2 B<REQUIRED> Id => Str

The ID of the data product.


=head2 B<REQUIRED> Name => Str

The name of the data product.


=head2 B<REQUIRED> OwningProjectId => Str

The ID of the owning project of the data product.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

