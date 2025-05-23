
package Paws::RDS::RebootDBClusterResult;
  use Moose;
  has DBCluster => (is => 'ro', isa => 'Paws::RDS::DBCluster');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RebootDBClusterResult

=head1 ATTRIBUTES


=head2 DBCluster => L<Paws::RDS::DBCluster>




=head2 _request_id => Str


=cut

