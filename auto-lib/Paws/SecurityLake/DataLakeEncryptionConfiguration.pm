# Generated by default/object.tt
package Paws::SecurityLake::DataLakeEncryptionConfiguration;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsKeyId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::DataLakeEncryptionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityLake::DataLakeEncryptionConfiguration object:

  $service_obj->Method(Att1 => { KmsKeyId => $value, ..., KmsKeyId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityLake::DataLakeEncryptionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->KmsKeyId

=head1 DESCRIPTION

Provides encryption details of Amazon Security Lake object.

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

The identifier of KMS encryption key used by Amazon Security Lake to
encrypt the Security Lake object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

