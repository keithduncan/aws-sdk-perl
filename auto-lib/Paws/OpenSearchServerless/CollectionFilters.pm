# Generated by default/object.tt
package Paws::OpenSearchServerless::CollectionFilters;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::CollectionFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpenSearchServerless::CollectionFilters object:

  $service_obj->Method(Att1 => { Name => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpenSearchServerless::CollectionFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A list of filter keys that you can use for LIST, UPDATE, and DELETE
requests to OpenSearch Serverless collections.

=head1 ATTRIBUTES


=head2 Name => Str

The name of the collection.


=head2 Status => Str

The current status of the collection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

