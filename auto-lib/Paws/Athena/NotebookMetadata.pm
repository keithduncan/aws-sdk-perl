# Generated by default/object.tt
package Paws::Athena::NotebookMetadata;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NotebookId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has WorkGroup => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::NotebookMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::NotebookMetadata object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., WorkGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::NotebookMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Contains metadata for notebook, including the notebook name, ID,
workgroup, and time created.

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time when the notebook was created.


=head2 LastModifiedTime => Str

The time when the notebook was last modified.


=head2 Name => Str

The name of the notebook.


=head2 NotebookId => Str

The notebook ID.


=head2 Type => Str

The type of notebook. Currently, the only valid type is C<IPYNB>.


=head2 WorkGroup => Str

The name of the Spark enabled workgroup to which the notebook belongs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

