
package Paws::DirectConnect::AllocateConnectionOnInterconnect;
  use Moose;
  has Bandwidth => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bandwidth' , required => 1);
  has ConnectionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionName' , required => 1);
  has InterconnectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'interconnectId' , required => 1);
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' , required => 1);
  has Vlan => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'vlan' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateConnectionOnInterconnect');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::Connection');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::AllocateConnectionOnInterconnect - Arguments for method AllocateConnectionOnInterconnect on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AllocateConnectionOnInterconnect on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method AllocateConnectionOnInterconnect.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AllocateConnectionOnInterconnect.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $Connection = $directconnect->AllocateConnectionOnInterconnect(
      Bandwidth      => 'MyBandwidth',
      ConnectionName => 'MyConnectionName',
      InterconnectId => 'MyInterconnectId',
      OwnerAccount   => 'MyOwnerAccount',
      Vlan           => 1,

    );

    # Results:
    my $AwsDevice            = $Connection->AwsDevice;
    my $AwsDeviceV2          = $Connection->AwsDeviceV2;
    my $AwsLogicalDeviceId   = $Connection->AwsLogicalDeviceId;
    my $Bandwidth            = $Connection->Bandwidth;
    my $ConnectionId         = $Connection->ConnectionId;
    my $ConnectionName       = $Connection->ConnectionName;
    my $ConnectionState      = $Connection->ConnectionState;
    my $EncryptionMode       = $Connection->EncryptionMode;
    my $HasLogicalRedundancy = $Connection->HasLogicalRedundancy;
    my $JumboFrameCapable    = $Connection->JumboFrameCapable;
    my $LagId                = $Connection->LagId;
    my $LoaIssueTime         = $Connection->LoaIssueTime;
    my $Location             = $Connection->Location;
    my $MacSecCapable        = $Connection->MacSecCapable;
    my $MacSecKeys           = $Connection->MacSecKeys;
    my $OwnerAccount         = $Connection->OwnerAccount;
    my $PartnerName          = $Connection->PartnerName;
    my $PortEncryptionStatus = $Connection->PortEncryptionStatus;
    my $ProviderName         = $Connection->ProviderName;
    my $Region               = $Connection->Region;
    my $Tags                 = $Connection->Tags;
    my $Vlan                 = $Connection->Vlan;

    # Returns a L<Paws::DirectConnect::Connection> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/AllocateConnectionOnInterconnect>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bandwidth => Str

The bandwidth of the connection. The possible values are 50Mbps,
100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and
10Gbps. Note that only those Direct Connect Partners who have met
specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or
10Gbps hosted connection.



=head2 B<REQUIRED> ConnectionName => Str

The name of the provisioned connection.



=head2 B<REQUIRED> InterconnectId => Str

The ID of the interconnect on which the connection will be provisioned.



=head2 B<REQUIRED> OwnerAccount => Str

The ID of the Amazon Web Services account of the customer for whom the
connection will be provisioned.



=head2 B<REQUIRED> Vlan => Int

The dedicated VLAN provisioned to the connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AllocateConnectionOnInterconnect in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

