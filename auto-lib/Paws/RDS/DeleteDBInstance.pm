
package Paws::RDS::DeleteDBInstance;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DeleteAutomatedBackups => (is => 'ro', isa => 'Bool');
  has FinalDBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SkipFinalSnapshot => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DeleteDBInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBInstanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBInstance - Arguments for method DeleteDBInstance on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDBInstance on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DeleteDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDBInstance.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To delete a DB instance.
    # This example deletes the specified DB instance.
    my $DeleteDBInstanceResult = $rds->DeleteDBInstance(
      'DBInstanceIdentifier' => 'mymysqlinstance',
      'SkipFinalSnapshot'    => 1
    );

    # Results:
    my $DBInstance = $DeleteDBInstanceResult->DBInstance;

    # Returns a L<Paws::RDS::DeleteDBInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteDBInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBInstanceIdentifier => Str

The DB instance identifier for the DB instance to be deleted. This
parameter isn't case-sensitive.

Constraints:

=over

=item *

Must match the name of an existing DB instance.

=back




=head2 DeleteAutomatedBackups => Bool

Specifies whether to remove automated backups immediately after the DB
instance is deleted. This parameter isn't case-sensitive. The default
is to remove automated backups immediately after the DB instance is
deleted.



=head2 FinalDBSnapshotIdentifier => Str

The C<DBSnapshotIdentifier> of the new C<DBSnapshot> created when the
C<SkipFinalSnapshot> parameter is disabled.

If you enable this parameter and also enable SkipFinalShapshot, the
command results in an error.

This setting doesn't apply to RDS Custom.

Constraints:

=over

=item *

Must be 1 to 255 letters or numbers.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=item *

Can't be specified when deleting a read replica.

=back




=head2 SkipFinalSnapshot => Bool

Specifies whether to skip the creation of a final DB snapshot before
deleting the instance. If you enable this parameter, RDS doesn't create
a DB snapshot. If you don't enable this parameter, RDS creates a DB
snapshot before the DB instance is deleted. By default, skip isn't
enabled, and the DB snapshot is created.

If you don't enable this parameter, you must specify the
C<FinalDBSnapshotIdentifier> parameter.

When a DB instance is in a failure state and has a status of C<failed>,
C<incompatible-restore>, or C<incompatible-network>, RDS can delete the
instance only if you enable this parameter.

If you delete a read replica or an RDS Custom instance, you must enable
this setting.

This setting is required for RDS Custom.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDBInstance in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

