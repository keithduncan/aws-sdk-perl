# Generated by default/object.tt
package Paws::SageMaker::EndpointMetadata;
  use Moose;
  has EndpointConfigName => (is => 'ro', isa => 'Str');
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);
  has EndpointStatus => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::EndpointMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::EndpointMetadata object:

  $service_obj->Method(Att1 => { EndpointConfigName => $value, ..., FailureReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::EndpointMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->EndpointConfigName

=head1 DESCRIPTION

The metadata of the endpoint.

=head1 ATTRIBUTES


=head2 EndpointConfigName => Str

The name of the endpoint configuration.


=head2 B<REQUIRED> EndpointName => Str

The name of the endpoint.


=head2 EndpointStatus => Str

The status of the endpoint. For possible values of the status of an
endpoint, see EndpointSummary
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_EndpointSummary.html).


=head2 FailureReason => Str

If the status of the endpoint is C<Failed>, or the status is
C<InService> but update operation fails, this provides the reason why
it failed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

