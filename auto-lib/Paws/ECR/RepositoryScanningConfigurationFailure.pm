# Generated by default/object.tt
package Paws::ECR::RepositoryScanningConfigurationFailure;
  use Moose;
  has FailureCode => (is => 'ro', isa => 'Str', request_name => 'failureCode', traits => ['NameInRequest']);
  has FailureReason => (is => 'ro', isa => 'Str', request_name => 'failureReason', traits => ['NameInRequest']);
  has RepositoryName => (is => 'ro', isa => 'Str', request_name => 'repositoryName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::RepositoryScanningConfigurationFailure

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::RepositoryScanningConfigurationFailure object:

  $service_obj->Method(Att1 => { FailureCode => $value, ..., RepositoryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::RepositoryScanningConfigurationFailure object:

  $result = $service_obj->Method(...);
  $result->Att1->FailureCode

=head1 DESCRIPTION

The details about any failures associated with the scanning
configuration of a repository.

=head1 ATTRIBUTES


=head2 FailureCode => Str

The failure code.


=head2 FailureReason => Str

The reason for the failure.


=head2 RepositoryName => Str

The name of the repository.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

