
package Paws::DMS::DeleteCertificate;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DeleteCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteCertificate - Arguments for method DeleteCertificate on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCertificate on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DeleteCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCertificate.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    # Delete Certificate
    # Deletes the specified certificate.
    my $DeleteCertificateResponse = $dms->DeleteCertificate( 'CertificateArn' =>
        'arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUSM457DE6XFJCJQ' );

    # Results:
    my $Certificate = $DeleteCertificateResponse->Certificate;

    # Returns a L<Paws::DMS::DeleteCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DeleteCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateArn => Str

The Amazon Resource Name (ARN) of the certificate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCertificate in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

