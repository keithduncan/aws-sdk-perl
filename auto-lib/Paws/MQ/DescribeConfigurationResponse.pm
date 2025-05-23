
package Paws::MQ::DescribeConfigurationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has AuthenticationStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authenticationStrategy');
  has Created => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'created');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EngineType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineType');
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineVersion');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LatestRevision => (is => 'ro', isa => 'Paws::MQ::ConfigurationRevision', traits => ['NameInRequest'], request_name => 'latestRevision');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Tags => (is => 'ro', isa => 'Paws::MQ::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DescribeConfigurationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Required. The ARN of the configuration.


=head2 AuthenticationStrategy => Str

Optional. The authentication strategy associated with the
configuration. The default is SIMPLE.

Valid values are: C<"SIMPLE">, C<"LDAP">
=head2 Created => Str

Required. The date and time of the configuration revision.


=head2 Description => Str

Required. The description of the configuration.


=head2 EngineType => Str

Required. The type of broker engine. Currently, Amazon MQ supports
ACTIVEMQ and RABBITMQ.

Valid values are: C<"ACTIVEMQ">, C<"RABBITMQ">
=head2 EngineVersion => Str

The broker engine version. Defaults to the latest available version for
the specified broker engine type. For a list of supported engine
versions, see the ActiveMQ version management
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html)
and the RabbitMQ version management
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html)
sections in the Amazon MQ Developer Guide.


=head2 Id => Str

Required. The unique ID that Amazon MQ generates for the configuration.


=head2 LatestRevision => L<Paws::MQ::ConfigurationRevision>

Required. The latest revision of the configuration.


=head2 Name => Str

Required. The name of the configuration. This value can contain only
alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~). This value must be 1-150 characters long.


=head2 Tags => L<Paws::MQ::__mapOf__string>

The list of all tags associated with this configuration.


=head2 _request_id => Str


=cut

