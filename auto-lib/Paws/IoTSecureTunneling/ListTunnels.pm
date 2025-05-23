
package Paws::IoTSecureTunneling::ListTunnels;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ThingName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTunnels');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSecureTunneling::ListTunnelsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSecureTunneling::ListTunnels - Arguments for method ListTunnels on L<Paws::IoTSecureTunneling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTunnels on the
L<AWS IoT Secure Tunneling|Paws::IoTSecureTunneling> service. Use the attributes of this class
as arguments to method ListTunnels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTunnels.

=head1 SYNOPSIS

    my $api.tunneling.iot = Paws->service('IoTSecureTunneling');
    my $ListTunnelsResponse = $api . tunneling . iot->ListTunnels(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      ThingName  => 'MyThingName',    # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListTunnelsResponse->NextToken;
    my $TunnelSummaries = $ListTunnelsResponse->TunnelSummaries;

    # Returns a L<Paws::IoTSecureTunneling::ListTunnelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.tunneling.iot/ListTunnels>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at once.



=head2 NextToken => Str

To retrieve the next set of results, the nextToken value from a
previous response; otherwise null to receive the first set of results.



=head2 ThingName => Str

The name of the IoT thing associated with the destination device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTunnels in L<Paws::IoTSecureTunneling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

