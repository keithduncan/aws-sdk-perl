
package Paws::ECRPublic::DeleteRepositoryPolicyResponse;
  use Moose;
  has PolicyText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyText' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::DeleteRepositoryPolicyResponse

=head1 ATTRIBUTES


=head2 PolicyText => Str

The JSON repository policy that was deleted from the repository.


=head2 RegistryId => Str

The registry ID that's associated with the request.


=head2 RepositoryName => Str

The repository name that's associated with the request.


=head2 _request_id => Str


=cut

1;