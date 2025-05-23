# Generated by default/object.tt
package Paws::Synthetics::CanaryScheduleInput;
  use Moose;
  has DurationInSeconds => (is => 'ro', isa => 'Int');
  has Expression => (is => 'ro', isa => 'Str', required => 1);
  has RetryConfig => (is => 'ro', isa => 'Paws::Synthetics::RetryConfigInput');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::CanaryScheduleInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Synthetics::CanaryScheduleInput object:

  $service_obj->Method(Att1 => { DurationInSeconds => $value, ..., RetryConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Synthetics::CanaryScheduleInput object:

  $result = $service_obj->Method(...);
  $result->Att1->DurationInSeconds

=head1 DESCRIPTION

This structure specifies how often a canary is to make runs and the
date and time when it should stop making runs.

=head1 ATTRIBUTES


=head2 DurationInSeconds => Int

How long, in seconds, for the canary to continue making regular runs
according to the schedule in the C<Expression> value. If you specify 0,
the canary continues making runs until you stop it. If you omit this
field, the default of 0 is used.


=head2 B<REQUIRED> Expression => Str

A C<rate> expression or a C<cron> expression that defines how often the
canary is to run.

For a rate expression, The syntax is C<rate(I<number unit>)>. I<unit>
can be C<minute>, C<minutes>, or C<hour>.

For example, C<rate(1 minute)> runs the canary once a minute, C<rate(10
minutes)> runs it once every 10 minutes, and C<rate(1 hour)> runs it
once every hour. You can specify a frequency between C<rate(1 minute)>
and C<rate(1 hour)>.

Specifying C<rate(0 minute)> or C<rate(0 hour)> is a special value that
causes the canary to run only once when it is started.

Use C<cron(I<expression>)> to specify a cron expression. You can't
schedule a canary to wait for more than a year before running. For
information about the syntax for cron expressions, see Scheduling
canary runs using cron
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html).


=head2 RetryConfig => L<Paws::Synthetics::RetryConfigInput>

A structure that contains the retry configuration for a canary



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

