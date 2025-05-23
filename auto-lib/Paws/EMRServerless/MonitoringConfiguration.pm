# Generated by default/object.tt
package Paws::EMRServerless::MonitoringConfiguration;
  use Moose;
  has CloudWatchLoggingConfiguration => (is => 'ro', isa => 'Paws::EMRServerless::CloudWatchLoggingConfiguration', request_name => 'cloudWatchLoggingConfiguration', traits => ['NameInRequest']);
  has ManagedPersistenceMonitoringConfiguration => (is => 'ro', isa => 'Paws::EMRServerless::ManagedPersistenceMonitoringConfiguration', request_name => 'managedPersistenceMonitoringConfiguration', traits => ['NameInRequest']);
  has PrometheusMonitoringConfiguration => (is => 'ro', isa => 'Paws::EMRServerless::PrometheusMonitoringConfiguration', request_name => 'prometheusMonitoringConfiguration', traits => ['NameInRequest']);
  has S3MonitoringConfiguration => (is => 'ro', isa => 'Paws::EMRServerless::S3MonitoringConfiguration', request_name => 's3MonitoringConfiguration', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRServerless::MonitoringConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMRServerless::MonitoringConfiguration object:

  $service_obj->Method(Att1 => { CloudWatchLoggingConfiguration => $value, ..., S3MonitoringConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMRServerless::MonitoringConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLoggingConfiguration

=head1 DESCRIPTION

The configuration setting for monitoring.

=head1 ATTRIBUTES


=head2 CloudWatchLoggingConfiguration => L<Paws::EMRServerless::CloudWatchLoggingConfiguration>

The Amazon CloudWatch configuration for monitoring logs. You can
configure your jobs to send log information to CloudWatch.


=head2 ManagedPersistenceMonitoringConfiguration => L<Paws::EMRServerless::ManagedPersistenceMonitoringConfiguration>

The managed log persistence configuration for a job run.


=head2 PrometheusMonitoringConfiguration => L<Paws::EMRServerless::PrometheusMonitoringConfiguration>

The monitoring configuration object you can configure to send metrics
to Amazon Managed Service for Prometheus for a job run.


=head2 S3MonitoringConfiguration => L<Paws::EMRServerless::S3MonitoringConfiguration>

The Amazon S3 configuration for monitoring log publishing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMRServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

