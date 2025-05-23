# Generated by default/object.tt
package Paws::MediaConnect::Bridge;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', request_name => 'bridgeArn', traits => ['NameInRequest'], required => 1);
  has BridgeMessages => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::MessageDetail]', request_name => 'bridgeMessages', traits => ['NameInRequest']);
  has BridgeState => (is => 'ro', isa => 'Str', request_name => 'bridgeState', traits => ['NameInRequest'], required => 1);
  has EgressGatewayBridge => (is => 'ro', isa => 'Paws::MediaConnect::EgressGatewayBridge', request_name => 'egressGatewayBridge', traits => ['NameInRequest']);
  has IngressGatewayBridge => (is => 'ro', isa => 'Paws::MediaConnect::IngressGatewayBridge', request_name => 'ingressGatewayBridge', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::BridgeOutput]', request_name => 'outputs', traits => ['NameInRequest']);
  has PlacementArn => (is => 'ro', isa => 'Str', request_name => 'placementArn', traits => ['NameInRequest'], required => 1);
  has SourceFailoverConfig => (is => 'ro', isa => 'Paws::MediaConnect::FailoverConfig', request_name => 'sourceFailoverConfig', traits => ['NameInRequest']);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::BridgeSource]', request_name => 'sources', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::Bridge

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::Bridge object:

  $service_obj->Method(Att1 => { BridgeArn => $value, ..., Sources => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::Bridge object:

  $result = $service_obj->Method(...);
  $result->Att1->BridgeArn

=head1 DESCRIPTION

A Bridge is the connection between your data center's Instances and the
Amazon Web Services cloud. A bridge can be used to send video from the
Amazon Web Services cloud to your data center or from your data center
to the Amazon Web Services cloud.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BridgeArn => Str

The Amazon Resource Number (ARN) of the bridge.


=head2 BridgeMessages => ArrayRef[L<Paws::MediaConnect::MessageDetail>]

Messages with details about the bridge.


=head2 B<REQUIRED> BridgeState => Str

The state of the bridge.


=head2 EgressGatewayBridge => L<Paws::MediaConnect::EgressGatewayBridge>

An egress bridge is a cloud-to-ground bridge. The content comes from an
existing MediaConnect flow and is delivered to your premises.


=head2 IngressGatewayBridge => L<Paws::MediaConnect::IngressGatewayBridge>

An ingress bridge is a ground-to-cloud bridge. The content originates
at your premises and is delivered to the cloud.


=head2 B<REQUIRED> Name => Str

The name of the bridge.


=head2 Outputs => ArrayRef[L<Paws::MediaConnect::BridgeOutput>]

The outputs on this bridge.


=head2 B<REQUIRED> PlacementArn => Str

The placement Amazon Resource Number (ARN) of the bridge.


=head2 SourceFailoverConfig => L<Paws::MediaConnect::FailoverConfig>

The settings for source failover.


=head2 Sources => ArrayRef[L<Paws::MediaConnect::BridgeSource>]

The sources on this bridge.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

