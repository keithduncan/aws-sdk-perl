package Paws::EC2::ServiceConfiguration;
  use Moose;
  has AcceptanceRequired => (is => 'ro', isa => 'Bool', request_name => 'acceptanceRequired', traits => ['NameInRequest']);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'availabilityZoneSet', traits => ['NameInRequest']);
  has BaseEndpointDnsNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'baseEndpointDnsNameSet', traits => ['NameInRequest']);
  has GatewayLoadBalancerArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'gatewayLoadBalancerArnSet', traits => ['NameInRequest']);
  has ManagesVpcEndpoints => (is => 'ro', isa => 'Bool', request_name => 'managesVpcEndpoints', traits => ['NameInRequest']);
  has NetworkLoadBalancerArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'networkLoadBalancerArnSet', traits => ['NameInRequest']);
  has PayerResponsibility => (is => 'ro', isa => 'Str', request_name => 'payerResponsibility', traits => ['NameInRequest']);
  has PrivateDnsName => (is => 'ro', isa => 'Str', request_name => 'privateDnsName', traits => ['NameInRequest']);
  has PrivateDnsNameConfiguration => (is => 'ro', isa => 'Paws::EC2::PrivateDnsNameConfiguration', request_name => 'privateDnsNameConfiguration', traits => ['NameInRequest']);
  has RemoteAccessEnabled => (is => 'ro', isa => 'Bool', request_name => 'remoteAccessEnabled', traits => ['NameInRequest']);
  has ServiceId => (is => 'ro', isa => 'Str', request_name => 'serviceId', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);
  has ServiceState => (is => 'ro', isa => 'Str', request_name => 'serviceState', traits => ['NameInRequest']);
  has ServiceType => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ServiceTypeDetail]', request_name => 'serviceType', traits => ['NameInRequest']);
  has SupportedIpAddressTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'supportedIpAddressTypeSet', traits => ['NameInRequest']);
  has SupportedRegions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SupportedRegionDetail]', request_name => 'supportedRegionSet', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ServiceConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ServiceConfiguration object:

  $service_obj->Method(Att1 => { AcceptanceRequired => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ServiceConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AcceptanceRequired

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AcceptanceRequired => Bool

Indicates whether requests from other Amazon Web Services accounts to
create an endpoint to the service must first be accepted.


=head2 AvailabilityZones => ArrayRef[Str|Undef]

The Availability Zones in which the service is available.


=head2 BaseEndpointDnsNames => ArrayRef[Str|Undef]

The DNS names for the service.


=head2 GatewayLoadBalancerArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the Gateway Load Balancers for the
service.


=head2 ManagesVpcEndpoints => Bool

Indicates whether the service manages its VPC endpoints. Management of
the service VPC endpoints using the VPC endpoint API is restricted.


=head2 NetworkLoadBalancerArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the Network Load Balancers for the
service.


=head2 PayerResponsibility => Str

The payer responsibility.


=head2 PrivateDnsName => Str

The private DNS name for the service.


=head2 PrivateDnsNameConfiguration => L<Paws::EC2::PrivateDnsNameConfiguration>

Information about the endpoint service private DNS name configuration.


=head2 RemoteAccessEnabled => Bool

Indicates whether consumers can access the service from a Region other
than the Region where the service is hosted.


=head2 ServiceId => Str

The ID of the service.


=head2 ServiceName => Str

The name of the service.


=head2 ServiceState => Str

The service state.


=head2 ServiceType => ArrayRef[L<Paws::EC2::ServiceTypeDetail>]

The type of service.


=head2 SupportedIpAddressTypes => ArrayRef[Str|Undef]

The supported IP address types.


=head2 SupportedRegions => ArrayRef[L<Paws::EC2::SupportedRegionDetail>]

The supported Regions.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags assigned to the service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
