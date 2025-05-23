
package Paws::DMS::ImportCertificate;
  use Moose;
  has CertificateIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has CertificatePem => (is => 'ro', isa => 'Str');
  has CertificateWallet => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::ImportCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ImportCertificate - Arguments for method ImportCertificate on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportCertificate on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method ImportCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportCertificate.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    # Import certificate
    # Uploads the specified certificate.
    my $ImportCertificateResponse = $dms->ImportCertificate(
      'CertificateIdentifier' => '',
      'CertificatePem'        => ''
    );

    # Results:
    my $Certificate = $ImportCertificateResponse->Certificate;

    # Returns a L<Paws::DMS::ImportCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/ImportCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateIdentifier => Str

A customer-assigned name for the certificate. Identifiers must begin
with a letter and must contain only ASCII letters, digits, and hyphens.
They can't end with a hyphen or contain two consecutive hyphens.



=head2 CertificatePem => Str

The contents of a C<.pem> file, which contains an X.509 certificate.



=head2 CertificateWallet => Str

The location of an imported Oracle Wallet certificate for use with SSL.
Provide the name of a C<.sso> file using the C<fileb://> prefix. You
can't provide the certificate inline.

Example: C<filebase64("${path.root}/rds-ca-2019-root.sso")>



=head2 Tags => ArrayRef[L<Paws::DMS::Tag>]

The tags associated with the certificate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportCertificate in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

