# Generated by default/object.tt
package Paws::BedrockAgentRuntime::AgentActionGroup;
  use Moose;
  has ActionGroupExecutor => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::ActionGroupExecutor', request_name => 'actionGroupExecutor', traits => ['NameInRequest']);
  has ActionGroupName => (is => 'ro', isa => 'Str', request_name => 'actionGroupName', traits => ['NameInRequest'], required => 1);
  has ApiSchema => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::APISchema', request_name => 'apiSchema', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has FunctionSchema => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::FunctionSchema', request_name => 'functionSchema', traits => ['NameInRequest']);
  has ParentActionGroupSignature => (is => 'ro', isa => 'Str', request_name => 'parentActionGroupSignature', traits => ['NameInRequest']);
  has ParentActionGroupSignatureParams => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::ActionGroupSignatureParams', request_name => 'parentActionGroupSignatureParams', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::AgentActionGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgentRuntime::AgentActionGroup object:

  $service_obj->Method(Att1 => { ActionGroupExecutor => $value, ..., ParentActionGroupSignatureParams => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgentRuntime::AgentActionGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionGroupExecutor

=head1 DESCRIPTION

Contains details of the inline agent's action group.

=head1 ATTRIBUTES


=head2 ActionGroupExecutor => L<Paws::BedrockAgentRuntime::ActionGroupExecutor>

The Amazon Resource Name (ARN) of the Lambda function containing the
business logic that is carried out upon invoking the action or the
custom control method for handling the information elicited from the
user.


=head2 B<REQUIRED> ActionGroupName => Str

The name of the action group.


=head2 ApiSchema => L<Paws::BedrockAgentRuntime::APISchema>

Contains either details about the S3 object containing the OpenAPI
schema for the action group or the JSON or YAML-formatted payload
defining the schema. For more information, see Action group OpenAPI
schemas
(https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html).


=head2 Description => Str

A description of the action group.


=head2 FunctionSchema => L<Paws::BedrockAgentRuntime::FunctionSchema>

Contains details about the function schema for the action group or the
JSON or YAML-formatted payload defining the schema.


=head2 ParentActionGroupSignature => Str

Specify a built-in or computer use action for this action group. If you
specify a value, you must leave the C<description>, C<apiSchema>, and
C<actionGroupExecutor> fields empty for this action group.

=over

=item *

To allow your agent to request the user for additional information when
trying to complete a task, set this field to C<AMAZON.UserInput>.

=item *

To allow your agent to generate, run, and troubleshoot code when trying
to complete a task, set this field to C<AMAZON.CodeInterpreter>.

=item *

To allow your agent to use an Anthropic computer use tool, specify one
of the following values.

Computer use is a new Anthropic Claude model capability (in beta)
available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2
only. When operating computer use functionality, we recommend taking
additional security precautions, such as executing computer actions in
virtual environments with restricted data access and limited internet
connectivity. For more information, see Configure an Amazon Bedrock
Agent to complete tasks with computer use tools
(https://docs.aws.amazon.com/bedrock/latest/userguide/agent-computer-use.html).

=over

=item *

C<ANTHROPIC.Computer> - Gives the agent permission to use the mouse and
keyboard and take screenshots.

=item *

C<ANTHROPIC.TextEditor> - Gives the agent permission to view, create
and edit files.

=item *

C<ANTHROPIC.Bash> - Gives the agent permission to run commands in a
bash shell.

=back

=back



=head2 ParentActionGroupSignatureParams => L<Paws::BedrockAgentRuntime::ActionGroupSignatureParams>

The configuration settings for a computer use action.

Computer use is a new Anthropic Claude model capability (in beta)
available with Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. For
more information, see Configure an Amazon Bedrock Agent to complete
tasks with computer use tools
(https://docs.aws.amazon.com/bedrock/latest/userguide/agent-computer-use.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

