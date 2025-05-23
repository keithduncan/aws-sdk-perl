# Generated by default/object.tt
package Paws::MQ::CreateConfigurationInput;
  use Moose;
  has AuthenticationStrategy => (is => 'ro', isa => 'Str', request_name => 'authenticationStrategy', traits => ['NameInRequest']);
  has EngineType => (is => 'ro', isa => 'Str', request_name => 'engineType', traits => ['NameInRequest'], required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str', request_name => 'engineVersion', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MQ::__mapOf__string', request_name => 'tags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::CreateConfigurationInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::CreateConfigurationInput object:

  $service_obj->Method(Att1 => { AuthenticationStrategy => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::CreateConfigurationInput object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthenticationStrategy

=head1 DESCRIPTION

Creates a new configuration for the specified configuration name.
Amazon MQ uses the default configuration (the engine type and version).

=head1 ATTRIBUTES


=head2 AuthenticationStrategy => Str

Optional. The authentication strategy associated with the
configuration. The default is SIMPLE.


=head2 B<REQUIRED> EngineType => Str

Required. The type of broker engine. Currently, Amazon MQ supports
ACTIVEMQ and RABBITMQ.


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

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

