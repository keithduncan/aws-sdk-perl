
package Paws::Glue::UpdateWorkflow;
  use Moose;
  has DefaultRunProperties => (is => 'ro', isa => 'Paws::Glue::WorkflowRunProperties');
  has Description => (is => 'ro', isa => 'Str');
  has MaxConcurrentRuns => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkflow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateWorkflowResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateWorkflow - Arguments for method UpdateWorkflow on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkflow on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkflow.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateWorkflowResponse = $glue->UpdateWorkflow(
      Name                 => 'MyNameString',
      DefaultRunProperties => {
        'MyIdString' => 'MyGenericString',    # key: min: 1, max: 255
      },    # OPTIONAL
      Description       => 'MyWorkflowDescriptionString',    # OPTIONAL
      MaxConcurrentRuns => 1,                                # OPTIONAL
    );

    # Results:
    my $Name = $UpdateWorkflowResponse->Name;

    # Returns a L<Paws::Glue::UpdateWorkflowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateWorkflow>

=head1 ATTRIBUTES


=head2 DefaultRunProperties => L<Paws::Glue::WorkflowRunProperties>

A collection of properties to be used as part of each execution of the
workflow.

Run properties may be logged. Do not pass plaintext secrets as
properties. Retrieve secrets from a Glue Connection, Amazon Web
Services Secrets Manager or other secret management mechanism if you
intend to use them within the workflow run.



=head2 Description => Str

The description of the workflow.



=head2 MaxConcurrentRuns => Int

You can use this parameter to prevent unwanted multiple updates to
data, to control costs, or in some cases, to prevent exceeding the
maximum number of concurrent runs of any of the component jobs. If you
leave this parameter blank, there is no limit to the number of
concurrent workflow runs.



=head2 B<REQUIRED> Name => Str

Name of the workflow to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkflow in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

