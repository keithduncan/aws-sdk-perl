
package Paws::MQ::CreateConfiguration;
  use Moose;
  has AuthenticationStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authenticationStrategy');
  has EngineType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineType', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineVersion');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MQ::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::CreateConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::CreateConfiguration - Arguments for method CreateConfiguration on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfiguration on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method CreateConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfiguration.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $CreateConfigurationResponse = $mq->CreateConfiguration(
      EngineType             => 'ACTIVEMQ',
      Name                   => 'My__string',
      AuthenticationStrategy => 'SIMPLE',                             # OPTIONAL
      EngineVersion          => 'My__string',                         # OPTIONAL
      Tags                   => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateConfigurationResponse->Arn;
    my $AuthenticationStrategy =
      $CreateConfigurationResponse->AuthenticationStrategy;
    my $Created        = $CreateConfigurationResponse->Created;
    my $Id             = $CreateConfigurationResponse->Id;
    my $LatestRevision = $CreateConfigurationResponse->LatestRevision;
    my $Name           = $CreateConfigurationResponse->Name;

    # Returns a L<Paws::MQ::CreateConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/CreateConfiguration>

=head1 ATTRIBUTES


=head2 AuthenticationStrategy => Str

Optional. The authentication strategy associated with the
configuration. The default is SIMPLE.

Valid values are: C<"SIMPLE">, C<"LDAP">

=head2 B<REQUIRED> EngineType => Str

Required. The type of broker engine. Currently, Amazon MQ supports
ACTIVEMQ and RABBITMQ.

Valid values are: C<"ACTIVEMQ">, C<"RABBITMQ">

=head2 EngineVersion => Str

The broker engine version. Defaults to the latest available version for
the specified broker engine type. For more information, see the
ActiveMQ version management
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html)
and the RabbitMQ version management
(https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html)
sections in the Amazon MQ Developer Guide.



=head2 B<REQUIRED> Name => Str

Required. The name of the configuration. This value can contain only
alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~). This value must be 1-150 characters long.



=head2 Tags => L<Paws::MQ::__mapOf__string>

Create tags when creating the configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfiguration in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

