
package Paws::ECR::DeleteRepository;
  use Moose;
  has Force => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'force' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRepository');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::DeleteRepositoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DeleteRepository - Arguments for method DeleteRepository on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRepository on the
L<Amazon Elastic Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method DeleteRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRepository.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
  # To force delete a repository
  # This example force deletes a repository named ubuntu in the default registry
  # for an account. The force parameter is required if the repository contains
  # images.
    my $DeleteRepositoryResponse = $api
      . ecr->DeleteRepository(
      'Force'          => 1,
      'RepositoryName' => 'ubuntu'
      );

    # Results:
    my $repository = $DeleteRepositoryResponse->repository;

    # Returns a L<Paws::ECR::DeleteRepositoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/DeleteRepository>

=head1 ATTRIBUTES


=head2 Force => Bool

If true, deleting the repository force deletes the contents of the
repository. If false, the repository must be empty before attempting to
delete it.



=head2 RegistryId => Str

The Amazon Web Services account ID associated with the registry that
contains the repository to delete. If you do not specify a registry,
the default registry is assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRepository in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

