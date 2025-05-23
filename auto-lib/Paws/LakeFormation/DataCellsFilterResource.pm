# Generated by default/object.tt
package Paws::LakeFormation::DataCellsFilterResource;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has TableCatalogId => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::DataCellsFilterResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LakeFormation::DataCellsFilterResource object:

  $service_obj->Method(Att1 => { DatabaseName => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LakeFormation::DataCellsFilterResource object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseName

=head1 DESCRIPTION

A structure for a data cells filter resource.

=head1 ATTRIBUTES


=head2 DatabaseName => Str

A database in the Glue Data Catalog.


=head2 Name => Str

The name of the data cells filter.


=head2 TableCatalogId => Str

The ID of the catalog to which the table belongs.


=head2 TableName => Str

The name of the table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

