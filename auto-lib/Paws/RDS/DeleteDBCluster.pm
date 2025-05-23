
package Paws::RDS::DeleteDBCluster;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DeleteAutomatedBackups => (is => 'ro', isa => 'Bool');
  has FinalDBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SkipFinalSnapshot => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DeleteDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBCluster - Arguments for method DeleteDBCluster on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDBCluster on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DeleteDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To delete a DB cluster.
    # This example deletes the specified DB cluster.
    my $DeleteDBClusterResult = $rds->DeleteDBCluster(
      'DBClusterIdentifier' => 'mydbcluster',
      'SkipFinalSnapshot'   => 1
    );

    # Results:
    my $DBCluster = $DeleteDBClusterResult->DBCluster;

    # Returns a L<Paws::RDS::DeleteDBClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteDBCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

The DB cluster identifier for the DB cluster to be deleted. This
parameter isn't case-sensitive.

Constraints:

=over

=item *

Must match an existing DBClusterIdentifier.

=back




=head2 DeleteAutomatedBackups => Bool

Specifies whether to remove automated backups immediately after the DB
cluster is deleted. This parameter isn't case-sensitive. The default is
to remove automated backups immediately after the DB cluster is
deleted, unless the Amazon Web Services Backup policy specifies a
point-in-time restore rule.



=head2 FinalDBSnapshotIdentifier => Str

The DB cluster snapshot identifier of the new DB cluster snapshot
created when C<SkipFinalSnapshot> is disabled.

If you specify this parameter and also skip the creation of a final DB
cluster snapshot with the C<SkipFinalShapshot> parameter, the request
results in an error.

Constraints:

=over

=item *

Must be 1 to 255 letters, numbers, or hyphens.

=item *

First character must be a letter

=item *

Can't end with a hyphen or contain two consecutive hyphens

=back




=head2 SkipFinalSnapshot => Bool

Specifies whether to skip the creation of a final DB cluster snapshot
before RDS deletes the DB cluster. If you set this value to C<true>,
RDS doesn't create a final DB cluster snapshot. If you set this value
to C<false> or don't specify it, RDS creates a DB cluster snapshot
before it deletes the DB cluster. By default, this parameter is
disabled, so RDS creates a final DB cluster snapshot.

If C<SkipFinalSnapshot> is disabled, you must specify a value for the
C<FinalDBSnapshotIdentifier> parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDBCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

