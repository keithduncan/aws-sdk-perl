# Generated by default/object.tt
package Paws::CleanRoomsML::GlueDataSource;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str', request_name => 'catalogId', traits => ['NameInRequest']);
  has DatabaseName => (is => 'ro', isa => 'Str', request_name => 'databaseName', traits => ['NameInRequest'], required => 1);
  has TableName => (is => 'ro', isa => 'Str', request_name => 'tableName', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GlueDataSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CleanRoomsML::GlueDataSource object:

  $service_obj->Method(Att1 => { CatalogId => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CleanRoomsML::GlueDataSource object:

  $result = $service_obj->Method(...);
  $result->Att1->CatalogId

=head1 DESCRIPTION

Defines the Glue data source that contains the training data.

=head1 ATTRIBUTES


=head2 CatalogId => Str

The Glue catalog that contains the training data.


=head2 B<REQUIRED> DatabaseName => Str

The Glue database that contains the training data.


=head2 B<REQUIRED> TableName => Str

The Glue table that contains the training data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

