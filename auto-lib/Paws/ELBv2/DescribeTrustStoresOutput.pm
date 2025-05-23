
package Paws::ELBv2::DescribeTrustStoresOutput;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has TrustStores => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::TrustStore]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeTrustStoresOutput

=head1 ATTRIBUTES


=head2 NextMarker => Str

If there are additional results, this is the marker for the next set of
results. Otherwise, this is null.


=head2 TrustStores => ArrayRef[L<Paws::ELBv2::TrustStore>]

Information about the trust stores.


=head2 _request_id => Str


=cut

