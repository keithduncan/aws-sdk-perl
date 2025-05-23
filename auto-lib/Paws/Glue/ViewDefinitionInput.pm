# Generated by default/object.tt
package Paws::Glue::ViewDefinitionInput;
  use Moose;
  has Definer => (is => 'ro', isa => 'Str');
  has IsProtected => (is => 'ro', isa => 'Bool');
  has Representations => (is => 'ro', isa => 'ArrayRef[Paws::Glue::ViewRepresentationInput]');
  has SubObjects => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ViewDefinitionInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::ViewDefinitionInput object:

  $service_obj->Method(Att1 => { Definer => $value, ..., SubObjects => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::ViewDefinitionInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Definer

=head1 DESCRIPTION

A structure containing details for creating or updating an Glue view.

=head1 ATTRIBUTES


=head2 Definer => Str

The definer of a view in SQL.


=head2 IsProtected => Bool

You can set this flag as true to instruct the engine not to push
user-provided operations into the logical plan of the view during query
planning. However, setting this flag does not guarantee that the engine
will comply. Refer to the engine's documentation to understand the
guarantees provided, if any.


=head2 Representations => ArrayRef[L<Paws::Glue::ViewRepresentationInput>]

A list of structures that contains the dialect of the view, and the
query that defines the view.


=head2 SubObjects => ArrayRef[Str|Undef]

A list of base table ARNs that make up the view.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

