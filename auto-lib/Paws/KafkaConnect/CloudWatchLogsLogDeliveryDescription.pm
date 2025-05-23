# Generated by default/object.tt
package Paws::KafkaConnect::CloudWatchLogsLogDeliveryDescription;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', request_name => 'enabled', traits => ['NameInRequest']);
  has LogGroup => (is => 'ro', isa => 'Str', request_name => 'logGroup', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::CloudWatchLogsLogDeliveryDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KafkaConnect::CloudWatchLogsLogDeliveryDescription object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., LogGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KafkaConnect::CloudWatchLogsLogDeliveryDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

A description of the log delivery settings.

=head1 ATTRIBUTES


=head2 Enabled => Bool

Whether log delivery to Amazon CloudWatch Logs is enabled.


=head2 LogGroup => Str

The name of the CloudWatch log group that is the destination for log
delivery.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

