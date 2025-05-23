# Generated by default/object.tt
package Paws::ConnectCases::SearchRelatedItemsResponseItem;
  use Moose;
  has AssociationTime => (is => 'ro', isa => 'Str', request_name => 'associationTime', traits => ['NameInRequest'], required => 1);
  has Content => (is => 'ro', isa => 'Paws::ConnectCases::RelatedItemContent', request_name => 'content', traits => ['NameInRequest'], required => 1);
  has PerformedBy => (is => 'ro', isa => 'Paws::ConnectCases::UserUnion', request_name => 'performedBy', traits => ['NameInRequest']);
  has RelatedItemId => (is => 'ro', isa => 'Str', request_name => 'relatedItemId', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ConnectCases::Tags', request_name => 'tags', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::SearchRelatedItemsResponseItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectCases::SearchRelatedItemsResponseItem object:

  $service_obj->Method(Att1 => { AssociationTime => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectCases::SearchRelatedItemsResponseItem object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationTime

=head1 DESCRIPTION

A list of items that represent RelatedItems.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationTime => Str

Time at which a related item was associated with a case.


=head2 B<REQUIRED> Content => L<Paws::ConnectCases::RelatedItemContent>

Represents the content of a particular type of related item.


=head2 PerformedBy => L<Paws::ConnectCases::UserUnion>

Represents the creator of the related item.


=head2 B<REQUIRED> RelatedItemId => Str

Unique identifier of a related item.


=head2 Tags => L<Paws::ConnectCases::Tags>

A map of of key-value pairs that represent tags on a resource. Tags are
used to organize, track, or control access for this resource.


=head2 B<REQUIRED> Type => Str

Type of a related item.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

