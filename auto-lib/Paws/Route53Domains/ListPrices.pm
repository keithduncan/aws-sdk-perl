
package Paws::Route53Domains::ListPrices;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has Tld => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPrices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::ListPricesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ListPrices - Arguments for method ListPrices on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPrices on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method ListPrices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPrices.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $ListPricesResponse = $route53domains->ListPrices(
      Marker   => 'MyPageMarker',    # OPTIONAL
      MaxItems => 1,                 # OPTIONAL
      Tld      => 'MyTldName',       # OPTIONAL
    );

    # Results:
    my $NextPageMarker = $ListPricesResponse->NextPageMarker;
    my $Prices         = $ListPricesResponse->Prices;

    # Returns a L<Paws::Route53Domains::ListPricesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/ListPrices>

=head1 ATTRIBUTES


=head2 Marker => Str

For an initial request for a list of prices, omit this element. If the
number of prices that are not yet complete is greater than the value
that you specified for C<MaxItems>, you can use C<Marker> to return
additional prices. Get the value of C<NextPageMarker> from the previous
response, and submit another request that includes the value of
C<NextPageMarker> in the C<Marker> element.

Used only for all TLDs. If you specify a TLD, don't specify a
C<Marker>.



=head2 MaxItems => Int

Number of C<Prices> to be returned.

Used only for all TLDs. If you specify a TLD, don't specify a
C<MaxItems>.



=head2 Tld => Str

The TLD for which you want to receive the pricing information. For
example. C<.net>.

If a C<Tld> value is not provided, a list of prices for all TLDs
supported by Route 53 is returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPrices in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

