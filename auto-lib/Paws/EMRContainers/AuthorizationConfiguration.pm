# Generated by default/object.tt
package Paws::EMRContainers::AuthorizationConfiguration;
  use Moose;
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::EMRContainers::EncryptionConfiguration', request_name => 'encryptionConfiguration', traits => ['NameInRequest']);
  has LakeFormationConfiguration => (is => 'ro', isa => 'Paws::EMRContainers::LakeFormationConfiguration', request_name => 'lakeFormationConfiguration', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::AuthorizationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMRContainers::AuthorizationConfiguration object:

  $service_obj->Method(Att1 => { EncryptionConfiguration => $value, ..., LakeFormationConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMRContainers::AuthorizationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionConfiguration

=head1 DESCRIPTION

Authorization-related configuration inputs for the security
configuration.

=head1 ATTRIBUTES


=head2 EncryptionConfiguration => L<Paws::EMRContainers::EncryptionConfiguration>

Encryption-related configuration input for the security configuration.


=head2 LakeFormationConfiguration => L<Paws::EMRContainers::LakeFormationConfiguration>

Lake Formation related configuration inputs for the security
configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

