# Generated by default/object.tt
package Paws::FinspaceData::SchemaDefinition;
  use Moose;
  has Columns => (is => 'ro', isa => 'ArrayRef[Paws::FinspaceData::ColumnDefinition]', request_name => 'columns', traits => ['NameInRequest']);
  has PrimaryKeyColumns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'primaryKeyColumns', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::SchemaDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FinspaceData::SchemaDefinition object:

  $service_obj->Method(Att1 => { Columns => $value, ..., PrimaryKeyColumns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FinspaceData::SchemaDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->Columns

=head1 DESCRIPTION

Definition for a schema on a tabular Dataset.

=head1 ATTRIBUTES


=head2 Columns => ArrayRef[L<Paws::FinspaceData::ColumnDefinition>]

List of column definitions.


=head2 PrimaryKeyColumns => ArrayRef[Str|Undef]

List of column names used for primary key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

