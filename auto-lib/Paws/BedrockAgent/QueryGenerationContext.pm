# Generated by default/object.tt
package Paws::BedrockAgent::QueryGenerationContext;
  use Moose;
  has CuratedQueries => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::CuratedQuery]', request_name => 'curatedQueries', traits => ['NameInRequest']);
  has Tables => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::QueryGenerationTable]', request_name => 'tables', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::QueryGenerationContext

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::QueryGenerationContext object:

  $service_obj->Method(Att1 => { CuratedQueries => $value, ..., Tables => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::QueryGenerationContext object:

  $result = $service_obj->Method(...);
  $result->Att1->CuratedQueries

=head1 DESCRIPTION

E<gt>Contains configurations for context to use during query
generation.

=head1 ATTRIBUTES


=head2 CuratedQueries => ArrayRef[L<Paws::BedrockAgent::CuratedQuery>]

An array of objects, each of which defines information about example
queries to help the query engine generate appropriate SQL queries.


=head2 Tables => ArrayRef[L<Paws::BedrockAgent::QueryGenerationTable>]

An array of objects, each of which defines information about a table in
the database.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

