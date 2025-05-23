# Generated by default/object.tt
package Paws::MediaConnect::Flow;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has EgressIp => (is => 'ro', isa => 'Str', request_name => 'egressIp', traits => ['NameInRequest']);
  has Entitlements => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::Entitlement]', request_name => 'entitlements', traits => ['NameInRequest'], required => 1);
  has FlowArn => (is => 'ro', isa => 'Str', request_name => 'flowArn', traits => ['NameInRequest'], required => 1);
  has FlowSize => (is => 'ro', isa => 'Str', request_name => 'flowSize', traits => ['NameInRequest']);
  has Maintenance => (is => 'ro', isa => 'Paws::MediaConnect::Maintenance', request_name => 'maintenance', traits => ['NameInRequest']);
  has MediaStreams => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::MediaStream]', request_name => 'mediaStreams', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has NdiConfig => (is => 'ro', isa => 'Paws::MediaConnect::NdiConfig', request_name => 'ndiConfig', traits => ['NameInRequest']);
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::Output]', request_name => 'outputs', traits => ['NameInRequest'], required => 1);
  has Source => (is => 'ro', isa => 'Paws::MediaConnect::Source', request_name => 'source', traits => ['NameInRequest'], required => 1);
  has SourceFailoverConfig => (is => 'ro', isa => 'Paws::MediaConnect::FailoverConfig', request_name => 'sourceFailoverConfig', traits => ['NameInRequest']);
  has SourceMonitoringConfig => (is => 'ro', isa => 'Paws::MediaConnect::MonitoringConfig', request_name => 'sourceMonitoringConfig', traits => ['NameInRequest']);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::Source]', request_name => 'sources', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has VpcInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::VpcInterface]', request_name => 'vpcInterfaces', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::Flow

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::Flow object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., VpcInterfaces => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::Flow object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

The settings for a flow, including its source, outputs, and
entitlements.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZone => Str

The Availability Zone that you want to create the flow in. These
options are limited to the Availability Zones within the current Amazon
Web Services Region.


=head2 Description => Str

A description of the flow. This value is not used or seen outside of
the current MediaConnect account.


=head2 EgressIp => Str

The IP address from which video will be sent to output destinations.


=head2 B<REQUIRED> Entitlements => ArrayRef[L<Paws::MediaConnect::Entitlement>]

The entitlements in this flow.


=head2 B<REQUIRED> FlowArn => Str

The Amazon Resource Name (ARN) of the flow.


=head2 FlowSize => Str

Determines the processing capacity and feature set of the flow. Set
this optional parameter to LARGE if you want to enable NDI outputs on
the flow.


=head2 Maintenance => L<Paws::MediaConnect::Maintenance>

The maintenance settings for the flow.


=head2 MediaStreams => ArrayRef[L<Paws::MediaConnect::MediaStream>]

The media streams that are associated with the flow. After you
associate a media stream with a source, you can also associate it with
outputs on the flow.


=head2 B<REQUIRED> Name => Str

The name of the flow.


=head2 NdiConfig => L<Paws::MediaConnect::NdiConfig>

Specifies the configuration settings for NDI outputs. Required when the
flow includes NDI outputs.


=head2 B<REQUIRED> Outputs => ArrayRef[L<Paws::MediaConnect::Output>]

The outputs in this flow.


=head2 B<REQUIRED> Source => L<Paws::MediaConnect::Source>

The source for the flow.


=head2 SourceFailoverConfig => L<Paws::MediaConnect::FailoverConfig>

The settings for the source failover.


=head2 SourceMonitoringConfig => L<Paws::MediaConnect::MonitoringConfig>

The settings for source monitoring.


=head2 Sources => ArrayRef[L<Paws::MediaConnect::Source>]

The settings for the sources that are assigned to the flow.


=head2 B<REQUIRED> Status => Str

The current status of the flow.


=head2 VpcInterfaces => ArrayRef[L<Paws::MediaConnect::VpcInterface>]

The VPC Interfaces for this flow.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

