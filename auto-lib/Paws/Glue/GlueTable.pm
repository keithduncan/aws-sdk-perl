# Generated by default/object.tt
package Paws::Glue::GlueTable;
  use Moose;
  has AdditionalOptions => (is => 'ro', isa => 'Paws::Glue::GlueTableAdditionalOptions');
  has CatalogId => (is => 'ro', isa => 'Str');
  has ConnectionName => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GlueTable

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::GlueTable object:

  $service_obj->Method(Att1 => { AdditionalOptions => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::GlueTable object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalOptions

=head1 DESCRIPTION

The database and table in the Glue Data Catalog that is used for input
or output data.

=head1 ATTRIBUTES


=head2 AdditionalOptions => L<Paws::Glue::GlueTableAdditionalOptions>

Additional options for the table. Currently there are two keys
supported:

=over

=item *

C<pushDownPredicate>: to filter on partitions without having to list
and read all the files in your dataset.

=item *

C<catalogPartitionPredicate>: to use server-side partition pruning
using partition indexes in the Glue Data Catalog.

=back



=head2 CatalogId => Str

A unique identifier for the Glue Data Catalog.


=head2 ConnectionName => Str

The name of the connection to the Glue Data Catalog.


=head2 B<REQUIRED> DatabaseName => Str

A database name in the Glue Data Catalog.


=head2 B<REQUIRED> TableName => Str

A table name in the Glue Data Catalog.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

