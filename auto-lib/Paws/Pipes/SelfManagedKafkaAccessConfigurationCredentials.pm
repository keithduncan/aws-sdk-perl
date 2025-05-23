# Generated by default/object.tt
package Paws::Pipes::SelfManagedKafkaAccessConfigurationCredentials;
  use Moose;
  has BasicAuth => (is => 'ro', isa => 'Str');
  has ClientCertificateTlsAuth => (is => 'ro', isa => 'Str');
  has SaslScram256Auth => (is => 'ro', isa => 'Str');
  has SaslScram512Auth => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pipes::SelfManagedKafkaAccessConfigurationCredentials

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pipes::SelfManagedKafkaAccessConfigurationCredentials object:

  $service_obj->Method(Att1 => { BasicAuth => $value, ..., SaslScram512Auth => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pipes::SelfManagedKafkaAccessConfigurationCredentials object:

  $result = $service_obj->Method(...);
  $result->Att1->BasicAuth

=head1 DESCRIPTION

The Secrets Manager secret that stores your stream credentials.

=head1 ATTRIBUTES


=head2 BasicAuth => Str

The ARN of the Secrets Manager secret.


=head2 ClientCertificateTlsAuth => Str

The ARN of the Secrets Manager secret.


=head2 SaslScram256Auth => Str

The ARN of the Secrets Manager secret.


=head2 SaslScram512Auth => Str

The ARN of the Secrets Manager secret.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pipes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

