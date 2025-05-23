# Generated by default/object.tt
package Paws::DMS::OracleDataProviderSettings;
  use Moose;
  has AsmServer => (is => 'ro', isa => 'Str');
  has CertificateArn => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has SecretsManagerOracleAsmAccessRoleArn => (is => 'ro', isa => 'Str');
  has SecretsManagerOracleAsmSecretId => (is => 'ro', isa => 'Str');
  has SecretsManagerSecurityDbEncryptionAccessRoleArn => (is => 'ro', isa => 'Str');
  has SecretsManagerSecurityDbEncryptionSecretId => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str');
  has SslMode => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::OracleDataProviderSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::OracleDataProviderSettings object:

  $service_obj->Method(Att1 => { AsmServer => $value, ..., SslMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::OracleDataProviderSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AsmServer

=head1 DESCRIPTION

Provides information that defines an Oracle data provider.

=head1 ATTRIBUTES


=head2 AsmServer => Str

The address of your Oracle Automatic Storage Management (ASM) server.
You can set this value from the C<asm_server> value. You set
C<asm_server> as part of the extra connection attribute string to
access an Oracle server with Binary Reader that uses ASM. For more
information, see Configuration for change data capture (CDC) on an
Oracle source database
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration).


=head2 CertificateArn => Str

The Amazon Resource Name (ARN) of the certificate used for SSL
connection.


=head2 DatabaseName => Str

The database name on the Oracle data provider.


=head2 Port => Int

The port value for the Oracle data provider.


=head2 SecretsManagerOracleAsmAccessRoleArn => Str

The ARN of the IAM role that provides access to the secret in Secrets
Manager that contains the Oracle ASM connection details.


=head2 SecretsManagerOracleAsmSecretId => Str

The identifier of the secret in Secrets Manager that contains the
Oracle ASM connection details.

Required only if your data provider uses the Oracle ASM server.


=head2 SecretsManagerSecurityDbEncryptionAccessRoleArn => Str

The ARN of the IAM role that provides access to the secret in Secrets
Manager that contains the TDE password.


=head2 SecretsManagerSecurityDbEncryptionSecretId => Str

The identifier of the secret in Secrets Manager that contains the
transparent data encryption (TDE) password. DMS requires this password
to access Oracle redo logs encrypted by TDE using Binary Reader.


=head2 ServerName => Str

The name of the Oracle server.


=head2 SslMode => Str

The SSL mode used to connect to the Oracle data provider. The default
value is C<none>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

