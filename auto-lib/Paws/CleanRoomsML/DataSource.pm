# Generated by default/object.tt
package Paws::CleanRoomsML::DataSource;
  use Moose;
  has GlueDataSource => (is => 'ro', isa => 'Paws::CleanRoomsML::GlueDataSource', request_name => 'glueDataSource', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::DataSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CleanRoomsML::DataSource object:

  $service_obj->Method(Att1 => { GlueDataSource => $value, ..., GlueDataSource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CleanRoomsML::DataSource object:

  $result = $service_obj->Method(...);
  $result->Att1->GlueDataSource

=head1 DESCRIPTION

Defines information about the Glue data source that contains the
training data.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlueDataSource => L<Paws::CleanRoomsML::GlueDataSource>

A GlueDataSource object that defines the catalog ID, database name, and
table name for the training data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

