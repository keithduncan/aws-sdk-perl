# Generated by default/object.tt
package Paws::ECR::RepositoryScanningConfiguration;
  use Moose;
  has AppliedScanFilters => (is => 'ro', isa => 'ArrayRef[Paws::ECR::ScanningRepositoryFilter]', request_name => 'appliedScanFilters', traits => ['NameInRequest']);
  has RepositoryArn => (is => 'ro', isa => 'Str', request_name => 'repositoryArn', traits => ['NameInRequest']);
  has RepositoryName => (is => 'ro', isa => 'Str', request_name => 'repositoryName', traits => ['NameInRequest']);
  has ScanFrequency => (is => 'ro', isa => 'Str', request_name => 'scanFrequency', traits => ['NameInRequest']);
  has ScanOnPush => (is => 'ro', isa => 'Bool', request_name => 'scanOnPush', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::RepositoryScanningConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::RepositoryScanningConfiguration object:

  $service_obj->Method(Att1 => { AppliedScanFilters => $value, ..., ScanOnPush => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::RepositoryScanningConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AppliedScanFilters

=head1 DESCRIPTION

The details of the scanning configuration for a repository.

=head1 ATTRIBUTES


=head2 AppliedScanFilters => ArrayRef[L<Paws::ECR::ScanningRepositoryFilter>]

The scan filters applied to the repository.


=head2 RepositoryArn => Str

The ARN of the repository.


=head2 RepositoryName => Str

The name of the repository.


=head2 ScanFrequency => Str

The scan frequency for the repository.


=head2 ScanOnPush => Bool

Whether or not scan on push is configured for the repository.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

