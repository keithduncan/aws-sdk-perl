
package Paws::AppStream::CreateDirectoryConfig;
  use Moose;
  has CertificateBasedAuthProperties => (is => 'ro', isa => 'Paws::AppStream::CertificateBasedAuthProperties');
  has DirectoryName => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationalUnitDistinguishedNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ServiceAccountCredentials => (is => 'ro', isa => 'Paws::AppStream::ServiceAccountCredentials');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDirectoryConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateDirectoryConfigResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateDirectoryConfig - Arguments for method CreateDirectoryConfig on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDirectoryConfig on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method CreateDirectoryConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDirectoryConfig.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $CreateDirectoryConfigResult = $appstream2->CreateDirectoryConfig(
      DirectoryName                        => 'MyDirectoryName',
      OrganizationalUnitDistinguishedNames => [
        'MyOrganizationalUnitDistinguishedName', ...    # max: 2000
      ],
      CertificateBasedAuthProperties => {
        CertificateAuthorityArn => 'MyArn',             # OPTIONAL
        Status                  => 'DISABLED'
        , # values: DISABLED, ENABLED, ENABLED_NO_DIRECTORY_LOGIN_FALLBACK; OPTIONAL
      },    # OPTIONAL
      ServiceAccountCredentials => {
        AccountName     => 'MyAccountName',        # min: 1
        AccountPassword => 'MyAccountPassword',    # min: 1, max: 127

      },    # OPTIONAL
    );

    # Results:
    my $DirectoryConfig = $CreateDirectoryConfigResult->DirectoryConfig;

    # Returns a L<Paws::AppStream::CreateDirectoryConfigResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/CreateDirectoryConfig>

=head1 ATTRIBUTES


=head2 CertificateBasedAuthProperties => L<Paws::AppStream::CertificateBasedAuthProperties>

The certificate-based authentication properties used to authenticate
SAML 2.0 Identity Provider (IdP) user identities to Active Directory
domain-joined streaming instances. Fallback is turned on by default
when certificate-based authentication is B<Enabled> . Fallback allows
users to log in using their AD domain password if certificate-based
authentication is unsuccessful, or to unlock a desktop lock screen.
B<Enabled_no_directory_login_fallback> enables certificate-based
authentication, but does not allow users to log in using their AD
domain password. Users will be disconnected to re-authenticate using
certificates.



=head2 B<REQUIRED> DirectoryName => Str

The fully qualified name of the directory (for example,
corp.example.com).



=head2 B<REQUIRED> OrganizationalUnitDistinguishedNames => ArrayRef[Str|Undef]

The distinguished names of the organizational units for computer
accounts.



=head2 ServiceAccountCredentials => L<Paws::AppStream::ServiceAccountCredentials>

The credentials for the service account used by the fleet or image
builder to connect to the directory.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDirectoryConfig in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

