# Generated by default/object.tt
package Paws::IoTFleetWise::MqttTopicConfig;
  use Moose;
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', request_name => 'executionRoleArn', traits => ['NameInRequest'], required => 1);
  has MqttTopicArn => (is => 'ro', isa => 'Str', request_name => 'mqttTopicArn', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::MqttTopicConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTFleetWise::MqttTopicConfig object:

  $service_obj->Method(Att1 => { ExecutionRoleArn => $value, ..., MqttTopicArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTFleetWise::MqttTopicConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ExecutionRoleArn

=head1 DESCRIPTION

The MQTT topic to which the Amazon Web Services IoT FleetWise campaign
routes data. For more information, see Device communication protocols
(https://docs.aws.amazon.com/iot/latest/developerguide/protocols.html)
in the I<Amazon Web Services IoT Core Developer Guide>.

Access to certain Amazon Web Services IoT FleetWise features is
currently gated. For more information, see Amazon Web Services Region
and feature availability
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionRoleArn => Str

The ARN of the role that grants Amazon Web Services IoT FleetWise
permission to access and act on messages sent to the MQTT topic.


=head2 B<REQUIRED> MqttTopicArn => Str

The ARN of the MQTT topic.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

