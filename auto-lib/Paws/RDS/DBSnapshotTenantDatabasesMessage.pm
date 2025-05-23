
package Paws::RDS::DBSnapshotTenantDatabasesMessage;
  use Moose;
  has DBSnapshotTenantDatabases => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBSnapshotTenantDatabase]', request_name => 'DBSnapshotTenantDatabase', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBSnapshotTenantDatabasesMessage

=head1 ATTRIBUTES


=head2 DBSnapshotTenantDatabases => ArrayRef[L<Paws::RDS::DBSnapshotTenantDatabase>]

A list of DB snapshot tenant databases.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

