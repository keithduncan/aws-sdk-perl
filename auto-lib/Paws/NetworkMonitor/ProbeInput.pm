# Generated by default/object.tt
package Paws::NetworkMonitor::ProbeInput;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str', request_name => 'destination', traits => ['NameInRequest'], required => 1);
  has DestinationPort => (is => 'ro', isa => 'Int', request_name => 'destinationPort', traits => ['NameInRequest']);
  has PacketSize => (is => 'ro', isa => 'Int', request_name => 'packetSize', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest'], required => 1);
  has SourceArn => (is => 'ro', isa => 'Str', request_name => 'sourceArn', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NetworkMonitor::TagMap', request_name => 'tags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkMonitor::ProbeInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkMonitor::ProbeInput object:

  $service_obj->Method(Att1 => { Destination => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkMonitor::ProbeInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

Defines a probe when creating a probe or monitor.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => Str

The destination IP address. This must be either C<IPV4> or C<IPV6>.


=head2 DestinationPort => Int

The port associated with the C<destination>. This is required only if
the C<protocol> is C<TCP> and must be a number between C<1> and
C<65536>.


=head2 PacketSize => Int

The size of the packets sent between the source and destination. This
must be a number between C<56> and C<8500>.


=head2 B<REQUIRED> Protocol => Str

The protocol used for the network traffic between the C<source> and
C<destination>. This must be either C<TCP> or C<ICMP>.


=head2 B<REQUIRED> SourceArn => Str

The ARN of the subnet.


=head2 Tags => L<Paws::NetworkMonitor::TagMap>

The list of key-value pairs created and assigned to the monitor.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

