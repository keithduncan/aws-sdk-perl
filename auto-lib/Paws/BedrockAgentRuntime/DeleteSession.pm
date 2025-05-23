
package Paws::BedrockAgentRuntime::DeleteSession;
  use Moose;
  has SessionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sessions/{sessionIdentifier}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::DeleteSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::DeleteSession - Arguments for method DeleteSession on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSession on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method DeleteSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSession.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $DeleteSessionResponse = $bedrock -agent-runtime->DeleteSession(
      SessionIdentifier => 'MySessionIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/DeleteSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SessionIdentifier => Str

The unique identifier for the session to be deleted. You can specify
either the session's C<sessionId> or its Amazon Resource Name (ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSession in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

