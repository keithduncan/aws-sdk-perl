# Generated by default/object.tt
package Paws::BedrockAgent::AgentActionGroup;
  use Moose;
  has ActionGroupExecutor => (is => 'ro', isa => 'Paws::BedrockAgent::ActionGroupExecutor', request_name => 'actionGroupExecutor', traits => ['NameInRequest']);
  has ActionGroupId => (is => 'ro', isa => 'Str', request_name => 'actionGroupId', traits => ['NameInRequest'], required => 1);
  has ActionGroupName => (is => 'ro', isa => 'Str', request_name => 'actionGroupName', traits => ['NameInRequest'], required => 1);
  has ActionGroupState => (is => 'ro', isa => 'Str', request_name => 'actionGroupState', traits => ['NameInRequest'], required => 1);
  has AgentId => (is => 'ro', isa => 'Str', request_name => 'agentId', traits => ['NameInRequest'], required => 1);
  has AgentVersion => (is => 'ro', isa => 'Str', request_name => 'agentVersion', traits => ['NameInRequest'], required => 1);
  has ApiSchema => (is => 'ro', isa => 'Paws::BedrockAgent::APISchema', request_name => 'apiSchema', traits => ['NameInRequest']);
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has FunctionSchema => (is => 'ro', isa => 'Paws::BedrockAgent::FunctionSchema', request_name => 'functionSchema', traits => ['NameInRequest']);
  has ParentActionGroupSignatureParams => (is => 'ro', isa => 'Paws::BedrockAgent::ActionGroupSignatureParams', request_name => 'parentActionGroupSignatureParams', traits => ['NameInRequest']);
  has ParentActionSignature => (is => 'ro', isa => 'Str', request_name => 'parentActionSignature', traits => ['NameInRequest']);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::AgentActionGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::AgentActionGroup object:

  $service_obj->Method(Att1 => { ActionGroupExecutor => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::AgentActionGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionGroupExecutor

=head1 DESCRIPTION

Contains details about an action group.

=head1 ATTRIBUTES


=head2 ActionGroupExecutor => L<Paws::BedrockAgent::ActionGroupExecutor>

The Amazon Resource Name (ARN) of the Lambda function containing the
business logic that is carried out upon invoking the action or the
custom control method for handling the information elicited from the
user.


=head2 B<REQUIRED> ActionGroupId => Str

The unique identifier of the action group.


=head2 B<REQUIRED> ActionGroupName => Str

The name of the action group.


=head2 B<REQUIRED> ActionGroupState => Str

Specifies whether the action group is available for the agent to invoke
or not when sending an InvokeAgent
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html)
request.


=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent to which the action group belongs.


=head2 B<REQUIRED> AgentVersion => Str

The version of the agent to which the action group belongs.


=head2 ApiSchema => L<Paws::BedrockAgent::APISchema>

Contains either details about the S3 object containing the OpenAPI
schema for the action group or the JSON or YAML-formatted payload
defining the schema. For more information, see Action group OpenAPI
schemas
(https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html).


=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


=head2 B<REQUIRED> CreatedAt => Str

The time at which the action group was created.


=head2 Description => Str

The description of the action group.


=head2 FunctionSchema => L<Paws::BedrockAgent::FunctionSchema>

Defines functions that each define parameters that the agent needs to
invoke from the user. Each function represents an action in an action
group.


=head2 ParentActionGroupSignatureParams => L<Paws::BedrockAgent::ActionGroupSignatureParams>

The configuration settings for a computer use action.

Computer use is a new Anthropic Claude model capability (in beta)
available with Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. For
more information, see Configure an Amazon Bedrock Agent to complete
tasks with computer use tools
(https://docs.aws.amazon.com/bedrock/latest/userguide/agent-computer-use.html).


=head2 ParentActionSignature => Str

If this field is set as C<AMAZON.UserInput>, the agent can request the
user for additional information when trying to complete a task. The
C<description>, C<apiSchema>, and C<actionGroupExecutor> fields must be
blank for this action group.

During orchestration, if the agent determines that it needs to invoke
an API in an action group, but doesn't have enough information to
complete the API request, it will invoke this action group instead and
return an Observation
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html)
reprompting the user for more information.


=head2 B<REQUIRED> UpdatedAt => Str

The time at which the action group was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

