# Generated by default/object.tt
package Paws::NetworkFlowMonitor::KubernetesMetadata;
  use Moose;
  has LocalPodName => (is => 'ro', isa => 'Str', request_name => 'localPodName', traits => ['NameInRequest']);
  has LocalPodNamespace => (is => 'ro', isa => 'Str', request_name => 'localPodNamespace', traits => ['NameInRequest']);
  has LocalServiceName => (is => 'ro', isa => 'Str', request_name => 'localServiceName', traits => ['NameInRequest']);
  has RemotePodName => (is => 'ro', isa => 'Str', request_name => 'remotePodName', traits => ['NameInRequest']);
  has RemotePodNamespace => (is => 'ro', isa => 'Str', request_name => 'remotePodNamespace', traits => ['NameInRequest']);
  has RemoteServiceName => (is => 'ro', isa => 'Str', request_name => 'remoteServiceName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::KubernetesMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkFlowMonitor::KubernetesMetadata object:

  $service_obj->Method(Att1 => { LocalPodName => $value, ..., RemoteServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkFlowMonitor::KubernetesMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->LocalPodName

=head1 DESCRIPTION

Meta data about Kubernetes resources.

=head1 ATTRIBUTES


=head2 LocalPodName => Str

The name of the pod for a local resource.


=head2 LocalPodNamespace => Str

The namespace of the pod for a local resource.


=head2 LocalServiceName => Str

The service name for a local resource.


=head2 RemotePodName => Str

The name of the pod for a remote resource.


=head2 RemotePodNamespace => Str

The namespace of the pod for a remote resource.


=head2 RemoteServiceName => Str

The service name for a remote resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkFlowMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

