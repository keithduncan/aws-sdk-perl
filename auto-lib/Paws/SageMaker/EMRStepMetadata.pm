# Generated by default/object.tt
package Paws::SageMaker::EMRStepMetadata;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str');
  has LogFilePath => (is => 'ro', isa => 'Str');
  has StepId => (is => 'ro', isa => 'Str');
  has StepName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::EMRStepMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::EMRStepMetadata object:

  $service_obj->Method(Att1 => { ClusterId => $value, ..., StepName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::EMRStepMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterId

=head1 DESCRIPTION

The configurations and outcomes of an Amazon EMR step execution.

=head1 ATTRIBUTES


=head2 ClusterId => Str

The identifier of the EMR cluster.


=head2 LogFilePath => Str

The path to the log file where the cluster step's failure root cause is
recorded.


=head2 StepId => Str

The identifier of the EMR cluster step.


=head2 StepName => Str

The name of the EMR cluster step.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

