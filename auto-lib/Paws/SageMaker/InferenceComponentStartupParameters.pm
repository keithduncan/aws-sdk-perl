# Generated by default/object.tt
package Paws::SageMaker::InferenceComponentStartupParameters;
  use Moose;
  has ContainerStartupHealthCheckTimeoutInSeconds => (is => 'ro', isa => 'Int');
  has ModelDataDownloadTimeoutInSeconds => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::InferenceComponentStartupParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::InferenceComponentStartupParameters object:

  $service_obj->Method(Att1 => { ContainerStartupHealthCheckTimeoutInSeconds => $value, ..., ModelDataDownloadTimeoutInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::InferenceComponentStartupParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerStartupHealthCheckTimeoutInSeconds

=head1 DESCRIPTION

Settings that take effect while the model container starts up.

=head1 ATTRIBUTES


=head2 ContainerStartupHealthCheckTimeoutInSeconds => Int

The timeout value, in seconds, for your inference container to pass
health check by Amazon S3 Hosting. For more information about health
check, see How Your Container Should Respond to Health Check (Ping)
Requests
(https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-inference-code.html#your-algorithms-inference-algo-ping-requests).


=head2 ModelDataDownloadTimeoutInSeconds => Int

The timeout value, in seconds, to download and extract the model that
you want to host from Amazon S3 to the individual inference instance
associated with this inference component.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

