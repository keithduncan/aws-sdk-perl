# Generated by default/object.tt
package Paws::VPCLattice::HealthCheckConfig;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', request_name => 'enabled', traits => ['NameInRequest']);
  has HealthCheckIntervalSeconds => (is => 'ro', isa => 'Int', request_name => 'healthCheckIntervalSeconds', traits => ['NameInRequest']);
  has HealthCheckTimeoutSeconds => (is => 'ro', isa => 'Int', request_name => 'healthCheckTimeoutSeconds', traits => ['NameInRequest']);
  has HealthyThresholdCount => (is => 'ro', isa => 'Int', request_name => 'healthyThresholdCount', traits => ['NameInRequest']);
  has Matcher => (is => 'ro', isa => 'Paws::VPCLattice::Matcher', request_name => 'matcher', traits => ['NameInRequest']);
  has Path => (is => 'ro', isa => 'Str', request_name => 'path', traits => ['NameInRequest']);
  has Port => (is => 'ro', isa => 'Int', request_name => 'port', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest']);
  has ProtocolVersion => (is => 'ro', isa => 'Str', request_name => 'protocolVersion', traits => ['NameInRequest']);
  has UnhealthyThresholdCount => (is => 'ro', isa => 'Int', request_name => 'unhealthyThresholdCount', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::HealthCheckConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::VPCLattice::HealthCheckConfig object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., UnhealthyThresholdCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::VPCLattice::HealthCheckConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Describes the health check configuration of a target group. Health
check configurations aren't used for target groups of type C<LAMBDA> or
C<ALB>.

=head1 ATTRIBUTES


=head2 Enabled => Bool

Indicates whether health checking is enabled.


=head2 HealthCheckIntervalSeconds => Int

The approximate amount of time, in seconds, between health checks of an
individual target. The range is 5E<ndash>300 seconds. The default is 30
seconds.


=head2 HealthCheckTimeoutSeconds => Int

The amount of time, in seconds, to wait before reporting a target as
unhealthy. The range is 1E<ndash>120 seconds. The default is 5 seconds.


=head2 HealthyThresholdCount => Int

The number of consecutive successful health checks required before
considering an unhealthy target healthy. The range is 2E<ndash>10. The
default is 5.


=head2 Matcher => L<Paws::VPCLattice::Matcher>

The codes to use when checking for a successful response from a target.


=head2 Path => Str

The destination for health checks on the targets. If the protocol
version is C<HTTP/1.1> or C<HTTP/2>, specify a valid URI (for example,
C</path?query>). The default path is C</>. Health checks are not
supported if the protocol version is C<gRPC>, however, you can choose
C<HTTP/1.1> or C<HTTP/2> and specify a valid URI.


=head2 Port => Int

The port used when performing health checks on targets. The default
setting is the port that a target receives traffic on.


=head2 Protocol => Str

The protocol used when performing health checks on targets. The
possible protocols are C<HTTP> and C<HTTPS>. The default is C<HTTP>.


=head2 ProtocolVersion => Str

The protocol version used when performing health checks on targets. The
possible protocol versions are C<HTTP1> and C<HTTP2>.


=head2 UnhealthyThresholdCount => Int

The number of consecutive failed health checks required before
considering a target unhealthy. The range is 2E<ndash>10. The default
is 2.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

