# Generated by default/object.tt
package Paws::SecretsManager::APIErrorType;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has SecretId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::APIErrorType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecretsManager::APIErrorType object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., SecretId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecretsManager::APIErrorType object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

The error Secrets Manager encountered while retrieving an individual
secret as part of BatchGetSecretValue.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

The error Secrets Manager encountered while retrieving an individual
secret as part of BatchGetSecretValue, for example
C<ResourceNotFoundException>,C<InvalidParameterException>,
C<InvalidRequestException>, C<DecryptionFailure>, or
C<AccessDeniedException>.


=head2 Message => Str

A message describing the error.


=head2 SecretId => Str

The ARN or name of the secret.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

