
package Paws::IoTFleetWise::ListDecoderManifestNetworkInterfaces;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDecoderManifestNetworkInterfaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::ListDecoderManifestNetworkInterfacesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ListDecoderManifestNetworkInterfaces - Arguments for method ListDecoderManifestNetworkInterfaces on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDecoderManifestNetworkInterfaces on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method ListDecoderManifestNetworkInterfaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDecoderManifestNetworkInterfaces.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $ListDecoderManifestNetworkInterfacesResponse =
      $iotfleetwise->ListDecoderManifestNetworkInterfaces(
      Name       => 'MyresourceName',
      MaxResults => 1,                  # OPTIONAL
      NextToken  => 'MynextToken',      # OPTIONAL
      );

    # Results:
    my $NetworkInterfaces =
      $ListDecoderManifestNetworkInterfacesResponse->NetworkInterfaces;
    my $NextToken = $ListDecoderManifestNetworkInterfacesResponse->NextToken;

# Returns a L<Paws::IoTFleetWise::ListDecoderManifestNetworkInterfacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/ListDecoderManifestNetworkInterfaces>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return, between 1 and 100, inclusive.



=head2 B<REQUIRED> Name => Str

The name of the decoder manifest to list information about.



=head2 NextToken => Str

A pagination token for the next set of results.

If the results of a search are large, only a portion of the results are
returned, and a C<nextToken> pagination token is returned in the
response. To retrieve the next set of results, reissue the search
request and include the returned token. When all results have been
returned, the response does not contain a pagination token value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDecoderManifestNetworkInterfaces in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

