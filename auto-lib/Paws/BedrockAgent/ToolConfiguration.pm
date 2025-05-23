# Generated by default/object.tt
package Paws::BedrockAgent::ToolConfiguration;
  use Moose;
  has ToolChoice => (is => 'ro', isa => 'Paws::BedrockAgent::ToolChoice', request_name => 'toolChoice', traits => ['NameInRequest']);
  has Tools => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::Tool]', request_name => 'tools', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ToolConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::ToolConfiguration object:

  $service_obj->Method(Att1 => { ToolChoice => $value, ..., Tools => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::ToolConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ToolChoice

=head1 DESCRIPTION

Configuration information for the tools that the model can use when
generating a response. For more information, see Use a tool to complete
an Amazon Bedrock model response
(https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html).

=head1 ATTRIBUTES


=head2 ToolChoice => L<Paws::BedrockAgent::ToolChoice>

Defines which tools the model should request when invoked.


=head2 B<REQUIRED> Tools => ArrayRef[L<Paws::BedrockAgent::Tool>]

An array of tools to pass to a model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

