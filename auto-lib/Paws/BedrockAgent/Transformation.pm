# Generated by default/object.tt
package Paws::BedrockAgent::Transformation;
  use Moose;
  has StepToApply => (is => 'ro', isa => 'Str', request_name => 'stepToApply', traits => ['NameInRequest'], required => 1);
  has TransformationFunction => (is => 'ro', isa => 'Paws::BedrockAgent::TransformationFunction', request_name => 'transformationFunction', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::Transformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::Transformation object:

  $service_obj->Method(Att1 => { StepToApply => $value, ..., TransformationFunction => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::Transformation object:

  $result = $service_obj->Method(...);
  $result->Att1->StepToApply

=head1 DESCRIPTION

A custom processing step for documents moving through a data source
ingestion pipeline. To process documents after they have been converted
into chunks, set the step to apply to C<POST_CHUNKING>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> StepToApply => Str

When the service applies the transformation.


=head2 B<REQUIRED> TransformationFunction => L<Paws::BedrockAgent::TransformationFunction>

A Lambda function that processes documents.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

