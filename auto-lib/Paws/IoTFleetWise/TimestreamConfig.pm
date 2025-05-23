# Generated by default/object.tt
package Paws::IoTFleetWise::TimestreamConfig;
  use Moose;
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', request_name => 'executionRoleArn', traits => ['NameInRequest'], required => 1);
  has TimestreamTableArn => (is => 'ro', isa => 'Str', request_name => 'timestreamTableArn', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::TimestreamConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTFleetWise::TimestreamConfig object:

  $service_obj->Method(Att1 => { ExecutionRoleArn => $value, ..., TimestreamTableArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTFleetWise::TimestreamConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ExecutionRoleArn

=head1 DESCRIPTION

The Amazon Timestream table where the Amazon Web Services IoT FleetWise
campaign sends data. Timestream stores and organizes data to optimize
query processing time and to reduce storage costs. For more
information, see Data modeling
(https://docs.aws.amazon.com/timestream/latest/developerguide/data-modeling.html)
in the I<Amazon Timestream Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the task execution role that grants
Amazon Web Services IoT FleetWise permission to deliver data to the
Amazon Timestream table.


=head2 B<REQUIRED> TimestreamTableArn => Str

The Amazon Resource Name (ARN) of the Amazon Timestream table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

