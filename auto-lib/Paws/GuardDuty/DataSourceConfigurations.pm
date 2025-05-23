# Generated by default/object.tt
package Paws::GuardDuty::DataSourceConfigurations;
  use Moose;
  has Kubernetes => (is => 'ro', isa => 'Paws::GuardDuty::KubernetesConfiguration', request_name => 'kubernetes', traits => ['NameInRequest']);
  has MalwareProtection => (is => 'ro', isa => 'Paws::GuardDuty::MalwareProtectionConfiguration', request_name => 'malwareProtection', traits => ['NameInRequest']);
  has S3Logs => (is => 'ro', isa => 'Paws::GuardDuty::S3LogsConfiguration', request_name => 's3Logs', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DataSourceConfigurations

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::DataSourceConfigurations object:

  $service_obj->Method(Att1 => { Kubernetes => $value, ..., S3Logs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::DataSourceConfigurations object:

  $result = $service_obj->Method(...);
  $result->Att1->Kubernetes

=head1 DESCRIPTION

Contains information about which data sources are enabled.

=head1 ATTRIBUTES


=head2 Kubernetes => L<Paws::GuardDuty::KubernetesConfiguration>

Describes whether any Kubernetes logs are enabled as data sources.


=head2 MalwareProtection => L<Paws::GuardDuty::MalwareProtectionConfiguration>

Describes whether Malware Protection is enabled as a data source.


=head2 S3Logs => L<Paws::GuardDuty::S3LogsConfiguration>

Describes whether S3 data event logs are enabled as a data source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

