# Generated by default/object.tt
package Paws::KafkaConnect::ProvisionedCapacity;
  use Moose;
  has McuCount => (is => 'ro', isa => 'Int', request_name => 'mcuCount', traits => ['NameInRequest'], required => 1);
  has WorkerCount => (is => 'ro', isa => 'Int', request_name => 'workerCount', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::ProvisionedCapacity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KafkaConnect::ProvisionedCapacity object:

  $service_obj->Method(Att1 => { McuCount => $value, ..., WorkerCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KafkaConnect::ProvisionedCapacity object:

  $result = $service_obj->Method(...);
  $result->Att1->McuCount

=head1 DESCRIPTION

Details about a connector's provisioned capacity.

=head1 ATTRIBUTES


=head2 B<REQUIRED> McuCount => Int

The number of microcontroller units (MCUs) allocated to each connector
worker. The valid values are 1,2,4,8.


=head2 B<REQUIRED> WorkerCount => Int

The number of workers that are allocated to the connector.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

