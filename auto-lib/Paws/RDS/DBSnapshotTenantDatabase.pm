# Generated by default/object.tt
package Paws::RDS::DBSnapshotTenantDatabase;
  use Moose;
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DbiResourceId => (is => 'ro', isa => 'Str');
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has DBSnapshotTenantDatabaseARN => (is => 'ro', isa => 'Str');
  has EngineName => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has NcharCharacterSetName => (is => 'ro', isa => 'Str');
  has SnapshotType => (is => 'ro', isa => 'Str');
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]', request_name => 'Tag', traits => ['NameInRequest']);
  has TenantDatabaseCreateTime => (is => 'ro', isa => 'Str');
  has TenantDatabaseResourceId => (is => 'ro', isa => 'Str');
  has TenantDBName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBSnapshotTenantDatabase

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBSnapshotTenantDatabase object:

  $service_obj->Method(Att1 => { CharacterSetName => $value, ..., TenantDBName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBSnapshotTenantDatabase object:

  $result = $service_obj->Method(...);
  $result->Att1->CharacterSetName

=head1 DESCRIPTION

Contains the details of a tenant database in a snapshot of a DB
instance.

=head1 ATTRIBUTES


=head2 CharacterSetName => Str

The name of the character set of a tenant database.


=head2 DBInstanceIdentifier => Str

The ID for the DB instance that contains the tenant databases.


=head2 DbiResourceId => Str

The resource identifier of the source CDB instance. This identifier
can't be changed and is unique to an Amazon Web Services Region.


=head2 DBSnapshotIdentifier => Str

The identifier for the snapshot of the DB instance.


=head2 DBSnapshotTenantDatabaseARN => Str

The Amazon Resource Name (ARN) for the snapshot tenant database.


=head2 EngineName => Str

The name of the database engine.


=head2 MasterUsername => Str

The master username of the tenant database.


=head2 NcharCharacterSetName => Str

The C<NCHAR> character set name of the tenant database.


=head2 SnapshotType => Str

The type of DB snapshot.


=head2 TagList => ArrayRef[L<Paws::RDS::Tag>]




=head2 TenantDatabaseCreateTime => Str

The time the DB snapshot was taken, specified in Coordinated Universal
Time (UTC). If you copy the snapshot, the creation time changes.


=head2 TenantDatabaseResourceId => Str

The resource ID of the tenant database.


=head2 TenantDBName => Str

The name of the tenant database.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

