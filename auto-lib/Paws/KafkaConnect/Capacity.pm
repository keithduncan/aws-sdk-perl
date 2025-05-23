# Generated by default/object.tt
package Paws::KafkaConnect::Capacity;
  use Moose;
  has AutoScaling => (is => 'ro', isa => 'Paws::KafkaConnect::AutoScaling', request_name => 'autoScaling', traits => ['NameInRequest']);
  has ProvisionedCapacity => (is => 'ro', isa => 'Paws::KafkaConnect::ProvisionedCapacity', request_name => 'provisionedCapacity', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::Capacity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KafkaConnect::Capacity object:

  $service_obj->Method(Att1 => { AutoScaling => $value, ..., ProvisionedCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KafkaConnect::Capacity object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScaling

=head1 DESCRIPTION

Information about the capacity of the connector, whether it is auto
scaled or provisioned.

=head1 ATTRIBUTES


=head2 AutoScaling => L<Paws::KafkaConnect::AutoScaling>

Information about the auto scaling parameters for the connector.


=head2 ProvisionedCapacity => L<Paws::KafkaConnect::ProvisionedCapacity>

Details about a fixed capacity allocated to a connector.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

