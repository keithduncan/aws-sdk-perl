
package Paws::RedShift::RevokeSnapshotAccess;
  use Moose;
  has AccountWithRestoreAccess => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotArn => (is => 'ro', isa => 'Str');
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSnapshotAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::RevokeSnapshotAccessResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeSnapshotAccessResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::RevokeSnapshotAccess - Arguments for method RevokeSnapshotAccess on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RevokeSnapshotAccess on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method RevokeSnapshotAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RevokeSnapshotAccess.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $RevokeSnapshotAccessResult = $redshift->RevokeSnapshotAccess(
      AccountWithRestoreAccess  => 'MyString',
      SnapshotArn               => 'MyString',    # OPTIONAL
      SnapshotClusterIdentifier => 'MyString',    # OPTIONAL
      SnapshotIdentifier        => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Snapshot = $RevokeSnapshotAccessResult->Snapshot;

    # Returns a L<Paws::RedShift::RevokeSnapshotAccessResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/RevokeSnapshotAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountWithRestoreAccess => Str

The identifier of the Amazon Web Services account that can no longer
restore the specified snapshot.



=head2 SnapshotArn => Str

The Amazon Resource Name (ARN) of the snapshot associated with the
message to revoke access.



=head2 SnapshotClusterIdentifier => Str

The identifier of the cluster the snapshot was created from. This
parameter is required if your IAM user has a policy containing a
snapshot resource element that specifies anything other than * for the
cluster name.



=head2 SnapshotIdentifier => Str

The identifier of the snapshot that the account can no longer access.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RevokeSnapshotAccess in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

