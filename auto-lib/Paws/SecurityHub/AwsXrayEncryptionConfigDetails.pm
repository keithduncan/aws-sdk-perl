# Generated by default/object.tt
package Paws::SecurityHub::AwsXrayEncryptionConfigDetails;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsXrayEncryptionConfigDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsXrayEncryptionConfigDetails object:

  $service_obj->Method(Att1 => { KeyId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsXrayEncryptionConfigDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->KeyId

=head1 DESCRIPTION

Information about the encryption configuration for X-Ray.

=head1 ATTRIBUTES


=head2 KeyId => Str

The identifier of the KMS key that is used for encryption. Provided if
C<Type> is C<KMS>.


=head2 Status => Str

The current status of the encryption configuration. Valid values are
C<ACTIVE> or C<UPDATING>.

When C<Status> is equal to C<UPDATING>, X-Ray might use both the old
and new encryption.


=head2 Type => Str

The type of encryption. C<KMS> indicates that the encryption uses KMS
keys. C<NONE> indicates the default encryption.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

