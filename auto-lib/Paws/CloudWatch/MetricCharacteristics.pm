# Generated by default/object.tt
package Paws::CloudWatch::MetricCharacteristics;
  use Moose;
  has PeriodicSpikes => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::MetricCharacteristics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::MetricCharacteristics object:

  $service_obj->Method(Att1 => { PeriodicSpikes => $value, ..., PeriodicSpikes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::MetricCharacteristics object:

  $result = $service_obj->Method(...);
  $result->Att1->PeriodicSpikes

=head1 DESCRIPTION

This object includes parameters that you can use to provide information
to CloudWatch to help it build more accurate anomaly detection models.

=head1 ATTRIBUTES


=head2 PeriodicSpikes => Bool

Set this parameter to C<true> if values for this metric consistently
include spikes that should not be considered to be anomalies. With this
set to C<true>, CloudWatch will expect to see spikes that occurred
consistently during the model training period, and won't flag future
similar spikes as anomalies.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

