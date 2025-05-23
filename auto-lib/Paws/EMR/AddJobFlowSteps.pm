
package Paws::EMR::AddJobFlowSteps;
  use Moose;
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::EMR::StepConfig]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddJobFlowSteps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::AddJobFlowStepsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::AddJobFlowSteps - Arguments for method AddJobFlowSteps on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddJobFlowSteps on the
L<Amazon EMR|Paws::EMR> service. Use the attributes of this class
as arguments to method AddJobFlowSteps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddJobFlowSteps.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $AddJobFlowStepsOutput = $elasticmapreduce->AddJobFlowSteps(
      JobFlowId => 'MyXmlStringMaxLen256',
      Steps     => [
        {
          HadoopJarStep => {
            Jar  => 'MyXmlString',    # max: 10280
            Args => [
              'MyXmlString', ...      # max: 10280
            ],    # OPTIONAL
            MainClass  => 'MyXmlString',    # max: 10280
            Properties => [
              {
                Key   => 'MyXmlString',    # max: 10280
                Value => 'MyXmlString',    # max: 10280
              },
              ...
            ],    # OPTIONAL
          },
          Name            => 'MyXmlStringMaxLen256',    # max: 256
          ActionOnFailure => 'TERMINATE_JOB_FLOW'
          , # values: TERMINATE_JOB_FLOW, TERMINATE_CLUSTER, CANCEL_AND_WAIT, CONTINUE; OPTIONAL
        },
        ...
      ],
      ExecutionRoleArn => 'MyArnType',    # OPTIONAL
    );

    # Results:
    my $StepIds = $AddJobFlowStepsOutput->StepIds;

    # Returns a L<Paws::EMR::AddJobFlowStepsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/AddJobFlowSteps>

=head1 ATTRIBUTES


=head2 ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the runtime role for a step on the
cluster. The runtime role can be a cross-account IAM role. The runtime
role ARN is a combination of account ID, role name, and role type using
the following format: C<arn:partition:service:region:account:resource>.

For example, C<arn:aws:IAM::1234567890:role/ReadOnly> is a correctly
formatted runtime role ARN.



=head2 B<REQUIRED> JobFlowId => Str

A string that uniquely identifies the job flow. This identifier is
returned by RunJobFlow and can also be obtained from ListClusters.



=head2 B<REQUIRED> Steps => ArrayRef[L<Paws::EMR::StepConfig>]

A list of StepConfig to be executed by the job flow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddJobFlowSteps in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

