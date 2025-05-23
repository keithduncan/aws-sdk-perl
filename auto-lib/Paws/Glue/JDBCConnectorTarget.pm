# Generated by default/object.tt
package Paws::Glue::JDBCConnectorTarget;
  use Moose;
  has AdditionalOptions => (is => 'ro', isa => 'Paws::Glue::AdditionalOptions');
  has ConnectionName => (is => 'ro', isa => 'Str', required => 1);
  has ConnectionTable => (is => 'ro', isa => 'Str', required => 1);
  has ConnectionType => (is => 'ro', isa => 'Str', required => 1);
  has ConnectorName => (is => 'ro', isa => 'Str', required => 1);
  has Inputs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OutputSchemas => (is => 'ro', isa => 'ArrayRef[Paws::Glue::GlueSchema]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::JDBCConnectorTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::JDBCConnectorTarget object:

  $service_obj->Method(Att1 => { AdditionalOptions => $value, ..., OutputSchemas => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::JDBCConnectorTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalOptions

=head1 DESCRIPTION

Specifies a data target that writes to Amazon S3 in Apache Parquet
columnar storage.

=head1 ATTRIBUTES


=head2 AdditionalOptions => L<Paws::Glue::AdditionalOptions>

Additional connection options for the connector.


=head2 B<REQUIRED> ConnectionName => Str

The name of the connection that is associated with the connector.


=head2 B<REQUIRED> ConnectionTable => Str

The name of the table in the data target.


=head2 B<REQUIRED> ConnectionType => Str

The type of connection, such as marketplace.jdbc or custom.jdbc,
designating a connection to a JDBC data target.


=head2 B<REQUIRED> ConnectorName => Str

The name of a connector that will be used.


=head2 B<REQUIRED> Inputs => ArrayRef[Str|Undef]

The nodes that are inputs to the data target.


=head2 B<REQUIRED> Name => Str

The name of the data target.


=head2 OutputSchemas => ArrayRef[L<Paws::Glue::GlueSchema>]

Specifies the data schema for the JDBC target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

