
package Paws::S3::GetObjectLegalHoldOutput;
  use Moose;
  has LegalHold => (is => 'ro', isa => 'Paws::S3::ObjectLockLegalHold', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectLegalHoldOutput

=head1 ATTRIBUTES


=head2 LegalHold => L<Paws::S3::ObjectLockLegalHold>

The current legal hold status for the specified object.




=cut

