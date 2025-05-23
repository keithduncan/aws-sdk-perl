# Generated by default/object.tt
package Paws::SageMaker::RecommendationJobResourceLimit;
  use Moose;
  has MaxNumberOfTests => (is => 'ro', isa => 'Int');
  has MaxParallelOfTests => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::RecommendationJobResourceLimit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::RecommendationJobResourceLimit object:

  $service_obj->Method(Att1 => { MaxNumberOfTests => $value, ..., MaxParallelOfTests => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::RecommendationJobResourceLimit object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxNumberOfTests

=head1 DESCRIPTION

Specifies the maximum number of jobs that can run in parallel and the
maximum number of jobs that can run.

=head1 ATTRIBUTES


=head2 MaxNumberOfTests => Int

Defines the maximum number of load tests.


=head2 MaxParallelOfTests => Int

Defines the maximum number of parallel load tests.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

