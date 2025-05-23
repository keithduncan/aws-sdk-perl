# Generated by default/object.tt
package Paws::SageMakerEdge::EdgeDeployment;
  use Moose;
  has Definitions => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerEdge::Definition]');
  has DeploymentName => (is => 'ro', isa => 'Str');
  has FailureHandlingPolicy => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerEdge::EdgeDeployment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMakerEdge::EdgeDeployment object:

  $service_obj->Method(Att1 => { Definitions => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMakerEdge::EdgeDeployment object:

  $result = $service_obj->Method(...);
  $result->Att1->Definitions

=head1 DESCRIPTION

Information about a deployment on an edge device that is registered
with SageMaker Edge Manager.

=head1 ATTRIBUTES


=head2 Definitions => ArrayRef[L<Paws::SageMakerEdge::Definition>]

Returns a list of Definition objects.


=head2 DeploymentName => Str

The name and unique ID of the deployment.


=head2 FailureHandlingPolicy => Str

Determines whether to rollback to previous configuration if deployment
fails.


=head2 Type => Str

The type of the deployment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMakerEdge>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

