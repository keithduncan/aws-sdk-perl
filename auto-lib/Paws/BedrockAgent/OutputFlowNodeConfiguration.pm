# Generated by default/object.tt
package Paws::BedrockAgent::OutputFlowNodeConfiguration;
  use Moose;

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::OutputFlowNodeConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::OutputFlowNodeConfiguration object:

  $service_obj->Method(Att1 => {  => $value, ...,  => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::OutputFlowNodeConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->

=head1 DESCRIPTION

Contains configurations for an output flow node in the flow. You
specify the data type expected for the input into the node in the
C<type> field and how to return the final output in the C<expression>
field.

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

