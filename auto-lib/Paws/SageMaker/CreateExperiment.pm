
package Paws::SageMaker::CreateExperiment;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has ExperimentName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateExperiment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateExperimentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateExperiment - Arguments for method CreateExperiment on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateExperiment on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateExperiment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateExperiment.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateExperimentResponse = $api . sagemaker->CreateExperiment(
      ExperimentName => 'MyExperimentEntityName',
      Description    => 'MyExperimentDescription',    # OPTIONAL
      DisplayName    => 'MyExperimentEntityName',     # OPTIONAL
      Tags           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ExperimentArn = $CreateExperimentResponse->ExperimentArn;

    # Returns a L<Paws::SageMaker::CreateExperimentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateExperiment>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the experiment.



=head2 DisplayName => Str

The name of the experiment as displayed. The name doesn't need to be
unique. If you don't specify C<DisplayName>, the value in
C<ExperimentName> is displayed.



=head2 B<REQUIRED> ExperimentName => Str

The name of the experiment. The name must be unique in your Amazon Web
Services account and is not case-sensitive.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of tags to associate with the experiment. You can use Search
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_Search.html)
API to search on the tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateExperiment in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

