# Generated by default/object.tt
package Paws::Kendra::ColumnConfiguration;
  use Moose;
  has ChangeDetectingColumns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has DocumentDataColumnName => (is => 'ro', isa => 'Str', required => 1);
  has DocumentIdColumnName => (is => 'ro', isa => 'Str', required => 1);
  has DocumentTitleColumnName => (is => 'ro', isa => 'Str');
  has FieldMappings => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DataSourceToIndexFieldMapping]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ColumnConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::ColumnConfiguration object:

  $service_obj->Method(Att1 => { ChangeDetectingColumns => $value, ..., FieldMappings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::ColumnConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ChangeDetectingColumns

=head1 DESCRIPTION

Provides information about how Amazon Kendra should use the columns of
a database in an index.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeDetectingColumns => ArrayRef[Str|Undef]

One to five columns that indicate when a document in the database has
changed.


=head2 B<REQUIRED> DocumentDataColumnName => Str

The column that contains the contents of the document.


=head2 B<REQUIRED> DocumentIdColumnName => Str

The column that provides the document's identifier.


=head2 DocumentTitleColumnName => Str

The column that contains the title of the document.


=head2 FieldMappings => ArrayRef[L<Paws::Kendra::DataSourceToIndexFieldMapping>]

An array of objects that map database column names to the corresponding
fields in an index. You must first create the fields in the index using
the C<UpdateIndex> API.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

