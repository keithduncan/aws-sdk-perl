
package Paws::IoT::ListCertificateProviders;
  use Moose;
  has AscendingOrder => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'isAscendingOrder');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCertificateProviders');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/certificate-providers/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListCertificateProvidersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListCertificateProviders - Arguments for method ListCertificateProviders on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCertificateProviders on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListCertificateProviders.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCertificateProviders.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListCertificateProvidersResponse = $iot->ListCertificateProviders(
      AscendingOrder => 1,             # OPTIONAL
      NextToken      => 'MyMarker',    # OPTIONAL
    );

    # Results:
    my $CertificateProviders =
      $ListCertificateProvidersResponse->CertificateProviders;
    my $NextToken = $ListCertificateProvidersResponse->NextToken;

    # Returns a L<Paws::IoT::ListCertificateProvidersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListCertificateProviders>

=head1 ATTRIBUTES


=head2 AscendingOrder => Bool

Returns the list of certificate providers in ascending alphabetical
order.



=head2 NextToken => Str

The token for the next set of results, or C<null> if there are no more
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCertificateProviders in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

