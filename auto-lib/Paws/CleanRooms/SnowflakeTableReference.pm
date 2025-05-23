# Generated by default/object.tt
package Paws::CleanRooms::SnowflakeTableReference;
  use Moose;
  has AccountIdentifier => (is => 'ro', isa => 'Str', request_name => 'accountIdentifier', traits => ['NameInRequest'], required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', request_name => 'databaseName', traits => ['NameInRequest'], required => 1);
  has SchemaName => (is => 'ro', isa => 'Str', request_name => 'schemaName', traits => ['NameInRequest'], required => 1);
  has SecretArn => (is => 'ro', isa => 'Str', request_name => 'secretArn', traits => ['NameInRequest'], required => 1);
  has TableName => (is => 'ro', isa => 'Str', request_name => 'tableName', traits => ['NameInRequest'], required => 1);
  has TableSchema => (is => 'ro', isa => 'Paws::CleanRooms::SnowflakeTableSchema', request_name => 'tableSchema', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::SnowflakeTableReference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CleanRooms::SnowflakeTableReference object:

  $service_obj->Method(Att1 => { AccountIdentifier => $value, ..., TableSchema => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CleanRooms::SnowflakeTableReference object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountIdentifier

=head1 DESCRIPTION

A reference to a table within Snowflake.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIdentifier => Str

The account identifier for the Snowflake table reference.


=head2 B<REQUIRED> DatabaseName => Str

The name of the database the Snowflake table belongs to.


=head2 B<REQUIRED> SchemaName => Str

The schema name of the Snowflake table reference.


=head2 B<REQUIRED> SecretArn => Str

The secret ARN of the Snowflake table reference.


=head2 B<REQUIRED> TableName => Str

The name of the Snowflake table.


=head2 B<REQUIRED> TableSchema => L<Paws::CleanRooms::SnowflakeTableSchema>

The schema of the Snowflake table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

