
package Paws::BackupGateway::UntagResourceOutput;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::UntagResourceOutput

=head1 ATTRIBUTES


=head2 ResourceARN => Str

The Amazon Resource Name (ARN) of the resource from which you removed
tags.


=head2 _request_id => Str


=cut

1;