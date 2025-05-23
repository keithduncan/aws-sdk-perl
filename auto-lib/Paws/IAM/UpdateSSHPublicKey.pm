
package Paws::IAM::UpdateSSHPublicKey;
  use Moose;
  has SSHPublicKeyId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSSHPublicKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UpdateSSHPublicKey - Arguments for method UpdateSSHPublicKey on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSSHPublicKey on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method UpdateSSHPublicKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSSHPublicKey.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    $iam->UpdateSSHPublicKey(
      SSHPublicKeyId => 'MypublicKeyIdType',
      Status         => 'Active',
      UserName       => 'MyuserNameType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/UpdateSSHPublicKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SSHPublicKeyId => Str

The unique identifier for the SSH public key.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters that can
consist of any upper or lowercased letter or digit.



=head2 B<REQUIRED> Status => Str

The status to assign to the SSH public key. C<Active> means that the
key can be used for authentication with an CodeCommit repository.
C<Inactive> means that the key cannot be used.

Valid values are: C<"Active">, C<"Inactive">

=head2 B<REQUIRED> UserName => Str

The name of the IAM user associated with the SSH public key.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSSHPublicKey in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

