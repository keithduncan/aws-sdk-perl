# Generated by default/object.tt
package Paws::BedrockAgent::FlowAliasConcurrencyConfiguration;
  use Moose;
  has MaxConcurrency => (is => 'ro', isa => 'Int', request_name => 'maxConcurrency', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::FlowAliasConcurrencyConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::FlowAliasConcurrencyConfiguration object:

  $service_obj->Method(Att1 => { MaxConcurrency => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::FlowAliasConcurrencyConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxConcurrency

=head1 DESCRIPTION

Determines how multiple nodes in a flow can run in parallel. Running
nodes concurrently can improve your flow's performance.

=head1 ATTRIBUTES


=head2 MaxConcurrency => Int

The maximum number of nodes that can be executed concurrently in the
flow.


=head2 B<REQUIRED> Type => Str

The type of concurrency to use for parallel node execution. Specify one
of the following options:

=over

=item *

C<Automatic> - Amazon Bedrock determines which nodes can be executed in
parallel based on the flow definition and its dependencies.

=item *

C<Manual> - You specify which nodes can be executed in parallel.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

