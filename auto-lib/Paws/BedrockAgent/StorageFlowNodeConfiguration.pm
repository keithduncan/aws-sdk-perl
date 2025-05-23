# Generated by default/object.tt
package Paws::BedrockAgent::StorageFlowNodeConfiguration;
  use Moose;
  has ServiceConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::StorageFlowNodeServiceConfiguration', request_name => 'serviceConfiguration', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::StorageFlowNodeConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::StorageFlowNodeConfiguration object:

  $service_obj->Method(Att1 => { ServiceConfiguration => $value, ..., ServiceConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::StorageFlowNodeConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ServiceConfiguration

=head1 DESCRIPTION

Contains configurations for a Storage node in a flow. This node stores
the input in an Amazon S3 location that you specify.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceConfiguration => L<Paws::BedrockAgent::StorageFlowNodeServiceConfiguration>

Contains configurations for the service to use for storing the input
into the node.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

