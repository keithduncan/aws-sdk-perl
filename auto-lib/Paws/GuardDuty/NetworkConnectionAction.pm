# Generated by default/object.tt
package Paws::GuardDuty::NetworkConnectionAction;
  use Moose;
  has Blocked => (is => 'ro', isa => 'Bool', request_name => 'blocked', traits => ['NameInRequest']);
  has ConnectionDirection => (is => 'ro', isa => 'Str', request_name => 'connectionDirection', traits => ['NameInRequest']);
  has LocalIpDetails => (is => 'ro', isa => 'Paws::GuardDuty::LocalIpDetails', request_name => 'localIpDetails', traits => ['NameInRequest']);
  has LocalNetworkInterface => (is => 'ro', isa => 'Str', request_name => 'localNetworkInterface', traits => ['NameInRequest']);
  has LocalPortDetails => (is => 'ro', isa => 'Paws::GuardDuty::LocalPortDetails', request_name => 'localPortDetails', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest']);
  has RemoteIpDetails => (is => 'ro', isa => 'Paws::GuardDuty::RemoteIpDetails', request_name => 'remoteIpDetails', traits => ['NameInRequest']);
  has RemotePortDetails => (is => 'ro', isa => 'Paws::GuardDuty::RemotePortDetails', request_name => 'remotePortDetails', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::NetworkConnectionAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::NetworkConnectionAction object:

  $service_obj->Method(Att1 => { Blocked => $value, ..., RemotePortDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::NetworkConnectionAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Blocked

=head1 DESCRIPTION

Contains information about the NETWORK_CONNECTION action described in
the finding.

=head1 ATTRIBUTES


=head2 Blocked => Bool

Indicates whether EC2 blocked the network connection to your instance.


=head2 ConnectionDirection => Str

The network connection direction.


=head2 LocalIpDetails => L<Paws::GuardDuty::LocalIpDetails>

The local IP information of the connection.


=head2 LocalNetworkInterface => Str

The EC2 instance's local elastic network interface utilized for the
connection.


=head2 LocalPortDetails => L<Paws::GuardDuty::LocalPortDetails>

The local port information of the connection.


=head2 Protocol => Str

The network connection protocol.


=head2 RemoteIpDetails => L<Paws::GuardDuty::RemoteIpDetails>

The remote IP information of the connection.


=head2 RemotePortDetails => L<Paws::GuardDuty::RemotePortDetails>

The remote port information of the connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

