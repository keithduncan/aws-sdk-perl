
package Paws::MQ::DescribeBroker;
  use Moose;
  has BrokerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'broker-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBroker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/brokers/{broker-id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::DescribeBrokerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DescribeBroker - Arguments for method DescribeBroker on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBroker on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method DescribeBroker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBroker.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $DescribeBrokerResponse = $mq->DescribeBroker(
      BrokerId => 'My__string',

    );

    # Results:
    my $ActionsRequired = $DescribeBrokerResponse->ActionsRequired;
    my $AuthenticationStrategy =
      $DescribeBrokerResponse->AuthenticationStrategy;
    my $AutoMinorVersionUpgrade =
      $DescribeBrokerResponse->AutoMinorVersionUpgrade;
    my $BrokerArn       = $DescribeBrokerResponse->BrokerArn;
    my $BrokerId        = $DescribeBrokerResponse->BrokerId;
    my $BrokerInstances = $DescribeBrokerResponse->BrokerInstances;
    my $BrokerName      = $DescribeBrokerResponse->BrokerName;
    my $BrokerState     = $DescribeBrokerResponse->BrokerState;
    my $Configurations  = $DescribeBrokerResponse->Configurations;
    my $Created         = $DescribeBrokerResponse->Created;
    my $DataReplicationMetadata =
      $DescribeBrokerResponse->DataReplicationMetadata;
    my $DataReplicationMode = $DescribeBrokerResponse->DataReplicationMode;
    my $DeploymentMode      = $DescribeBrokerResponse->DeploymentMode;
    my $EncryptionOptions   = $DescribeBrokerResponse->EncryptionOptions;
    my $EngineType          = $DescribeBrokerResponse->EngineType;
    my $EngineVersion       = $DescribeBrokerResponse->EngineVersion;
    my $HostInstanceType    = $DescribeBrokerResponse->HostInstanceType;
    my $LdapServerMetadata  = $DescribeBrokerResponse->LdapServerMetadata;
    my $Logs                = $DescribeBrokerResponse->Logs;
    my $MaintenanceWindowStartTime =
      $DescribeBrokerResponse->MaintenanceWindowStartTime;
    my $PendingAuthenticationStrategy =
      $DescribeBrokerResponse->PendingAuthenticationStrategy;
    my $PendingDataReplicationMetadata =
      $DescribeBrokerResponse->PendingDataReplicationMetadata;
    my $PendingDataReplicationMode =
      $DescribeBrokerResponse->PendingDataReplicationMode;
    my $PendingEngineVersion = $DescribeBrokerResponse->PendingEngineVersion;
    my $PendingHostInstanceType =
      $DescribeBrokerResponse->PendingHostInstanceType;
    my $PendingLdapServerMetadata =
      $DescribeBrokerResponse->PendingLdapServerMetadata;
    my $PendingSecurityGroups = $DescribeBrokerResponse->PendingSecurityGroups;
    my $PubliclyAccessible    = $DescribeBrokerResponse->PubliclyAccessible;
    my $SecurityGroups        = $DescribeBrokerResponse->SecurityGroups;
    my $StorageType           = $DescribeBrokerResponse->StorageType;
    my $SubnetIds             = $DescribeBrokerResponse->SubnetIds;
    my $Tags                  = $DescribeBrokerResponse->Tags;
    my $Users                 = $DescribeBrokerResponse->Users;

    # Returns a L<Paws::MQ::DescribeBrokerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/DescribeBroker>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BrokerId => Str

The unique ID that Amazon MQ generates for the broker.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBroker in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

