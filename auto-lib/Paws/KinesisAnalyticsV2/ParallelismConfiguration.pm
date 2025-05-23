# Generated by default/object.tt
package Paws::KinesisAnalyticsV2::ParallelismConfiguration;
  use Moose;
  has AutoScalingEnabled => (is => 'ro', isa => 'Bool');
  has ConfigurationType => (is => 'ro', isa => 'Str', required => 1);
  has Parallelism => (is => 'ro', isa => 'Int');
  has ParallelismPerKPU => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ParallelismConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::ParallelismConfiguration object:

  $service_obj->Method(Att1 => { AutoScalingEnabled => $value, ..., ParallelismPerKPU => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::ParallelismConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingEnabled

=head1 DESCRIPTION

Describes parameters for how a Managed Service for Apache Flink
application executes multiple tasks simultaneously. For more
information about parallelism, see Parallel Execution
(https://nightlies.apache.org/flink/flink-docs-release-1.19/dev/parallel.html)
in the Apache Flink Documentation
(https://nightlies.apache.org/flink/flink-docs-release-1.19/).

=head1 ATTRIBUTES


=head2 AutoScalingEnabled => Bool

Describes whether the Managed Service for Apache Flink service can
increase the parallelism of the application in response to increased
throughput.


=head2 B<REQUIRED> ConfigurationType => Str

Describes whether the application uses the default parallelism for the
Managed Service for Apache Flink service. You must set this property to
C<CUSTOM> in order to change your application's C<AutoScalingEnabled>,
C<Parallelism>, or C<ParallelismPerKPU> properties.


=head2 Parallelism => Int

Describes the initial number of parallel tasks that a Managed Service
for Apache Flink application can perform. If C<AutoScalingEnabled> is
set to True, Managed Service for Apache Flink increases the
C<CurrentParallelism> value in response to application load. The
service can increase the C<CurrentParallelism> value up to the maximum
parallelism, which is C<ParalellismPerKPU> times the maximum KPUs for
the application. The maximum KPUs for an application is 32 by default,
and can be increased by requesting a limit increase. If application
load is reduced, the service can reduce the C<CurrentParallelism> value
down to the C<Parallelism> setting.


=head2 ParallelismPerKPU => Int

Describes the number of parallel tasks that a Managed Service for
Apache Flink application can perform per Kinesis Processing Unit (KPU)
used by the application. For more information about KPUs, see Amazon
Managed Service for Apache Flink Pricing
(http://aws.amazon.com/kinesis/data-analytics/pricing/).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

