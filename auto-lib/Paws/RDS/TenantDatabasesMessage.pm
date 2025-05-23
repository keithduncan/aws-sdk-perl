
package Paws::RDS::TenantDatabasesMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has TenantDatabases => (is => 'ro', isa => 'ArrayRef[Paws::RDS::TenantDatabase]', request_name => 'TenantDatabase', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::TenantDatabasesMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeTenantDatabases> request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.


=head2 TenantDatabases => ArrayRef[L<Paws::RDS::TenantDatabase>]

An array of the tenant databases requested by the
C<DescribeTenantDatabases> operation.


=head2 _request_id => Str


=cut

