
package Paws::SNS::CreatePlatformApplicationResponse;
  use Moose;
  has PlatformApplicationArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::CreatePlatformApplicationResponse

=head1 ATTRIBUTES


=head2 PlatformApplicationArn => Str

C<PlatformApplicationArn> is returned.


=head2 _request_id => Str


=cut

