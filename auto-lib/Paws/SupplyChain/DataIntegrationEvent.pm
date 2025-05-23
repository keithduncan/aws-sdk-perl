# Generated by default/object.tt
package Paws::SupplyChain::DataIntegrationEvent;
  use Moose;
  has DatasetTargetDetails => (is => 'ro', isa => 'Paws::SupplyChain::DataIntegrationEventDatasetTargetDetails', request_name => 'datasetTargetDetails', traits => ['NameInRequest']);
  has EventGroupId => (is => 'ro', isa => 'Str', request_name => 'eventGroupId', traits => ['NameInRequest'], required => 1);
  has EventId => (is => 'ro', isa => 'Str', request_name => 'eventId', traits => ['NameInRequest'], required => 1);
  has EventTimestamp => (is => 'ro', isa => 'Str', request_name => 'eventTimestamp', traits => ['NameInRequest'], required => 1);
  has EventType => (is => 'ro', isa => 'Str', request_name => 'eventType', traits => ['NameInRequest'], required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::DataIntegrationEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SupplyChain::DataIntegrationEvent object:

  $service_obj->Method(Att1 => { DatasetTargetDetails => $value, ..., InstanceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SupplyChain::DataIntegrationEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->DatasetTargetDetails

=head1 DESCRIPTION

The data integration event details.

=head1 ATTRIBUTES


=head2 DatasetTargetDetails => L<Paws::SupplyChain::DataIntegrationEventDatasetTargetDetails>

The target dataset details for a DATASET event type.


=head2 B<REQUIRED> EventGroupId => Str

Event identifier (for example, orderId for InboundOrder) used for data
sharding or partitioning.


=head2 B<REQUIRED> EventId => Str

The unique event identifier.


=head2 B<REQUIRED> EventTimestamp => Str

The event timestamp (in epoch seconds).


=head2 B<REQUIRED> EventType => Str

The data event type.


=head2 B<REQUIRED> InstanceId => Str

The AWS Supply Chain instance identifier.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

