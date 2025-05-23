# Generated by default/object.tt
package Paws::NetworkFlowMonitor::TraversedComponent;
  use Moose;
  has ComponentArn => (is => 'ro', isa => 'Str', request_name => 'componentArn', traits => ['NameInRequest']);
  has ComponentId => (is => 'ro', isa => 'Str', request_name => 'componentId', traits => ['NameInRequest']);
  has ComponentType => (is => 'ro', isa => 'Str', request_name => 'componentType', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::TraversedComponent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkFlowMonitor::TraversedComponent object:

  $service_obj->Method(Att1 => { ComponentArn => $value, ..., ServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkFlowMonitor::TraversedComponent object:

  $result = $service_obj->Method(...);
  $result->Att1->ComponentArn

=head1 DESCRIPTION

A section of the network that a network flow has traveled through.

=head1 ATTRIBUTES


=head2 ComponentArn => Str

The Amazon Resource Name (ARN) of a tranversed component.


=head2 ComponentId => Str

The identifier for the traversed component.


=head2 ComponentType => Str

The type of component that was traversed.


=head2 ServiceName => Str

The service name for the traversed component.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkFlowMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

