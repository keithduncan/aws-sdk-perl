# Generated by default/object.tt
package Paws::DevOpsGuru::LogAnomalyClass;
  use Moose;
  has Explanation => (is => 'ro', isa => 'Str');
  has LogAnomalyToken => (is => 'ro', isa => 'Str');
  has LogAnomalyType => (is => 'ro', isa => 'Str');
  has LogEventId => (is => 'ro', isa => 'Str');
  has LogEventTimestamp => (is => 'ro', isa => 'Str');
  has LogStreamName => (is => 'ro', isa => 'Str');
  has NumberOfLogLinesOccurrences => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::LogAnomalyClass

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DevOpsGuru::LogAnomalyClass object:

  $service_obj->Method(Att1 => { Explanation => $value, ..., NumberOfLogLinesOccurrences => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DevOpsGuru::LogAnomalyClass object:

  $result = $service_obj->Method(...);
  $result->Att1->Explanation

=head1 DESCRIPTION

Information about an anomalous log event found within a log group.

=head1 ATTRIBUTES


=head2 Explanation => Str

The explanation for why the log event is considered an anomaly.


=head2 LogAnomalyToken => Str

The token where the anomaly was detected. This may refer to an
exception or another location, or it may be blank for log anomalies
such as format anomalies.


=head2 LogAnomalyType => Str

The type of log anomaly that has been detected.


=head2 LogEventId => Str

The ID of the log event.


=head2 LogEventTimestamp => Str

The time of the first occurrence of the anomalous log event.


=head2 LogStreamName => Str

The name of the Amazon CloudWatch log stream that the anomalous log
event belongs to. A log stream is a sequence of log events that share
the same source.


=head2 NumberOfLogLinesOccurrences => Int

The number of log lines where this anomalous log event occurs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

