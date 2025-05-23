
package Paws::GuardDuty::CreateDetector;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DataSources => (is => 'ro', isa => 'Paws::GuardDuty::DataSourceConfigurations', traits => ['NameInRequest'], request_name => 'dataSources');
  has Enable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enable', required => 1);
  has Features => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::DetectorFeatureConfiguration]', traits => ['NameInRequest'], request_name => 'features');
  has FindingPublishingFrequency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'findingPublishingFrequency');
  has Tags => (is => 'ro', isa => 'Paws::GuardDuty::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDetector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::CreateDetectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateDetector - Arguments for method CreateDetector on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDetector on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method CreateDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDetector.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $CreateDetectorResponse = $guardduty->CreateDetector(
      Enable      => 1,
      ClientToken => 'MyClientToken',    # OPTIONAL
      DataSources => {
        Kubernetes => {
          AuditLogs => {
            Enable => 1,

          },

        },    # OPTIONAL
        MalwareProtection => {
          ScanEc2InstanceWithFindings => { EbsVolumes => 1, },    # OPTIONAL
        },    # OPTIONAL
        S3Logs => {
          Enable => 1,

        },    # OPTIONAL
      },    # OPTIONAL
      Features => [
        {
          AdditionalConfiguration => [
            {
              Name => 'EKS_ADDON_MANAGEMENT'
              , # values: EKS_ADDON_MANAGEMENT, ECS_FARGATE_AGENT_MANAGEMENT, EC2_AGENT_MANAGEMENT; OPTIONAL
              Status => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          Name => 'S3_DATA_EVENTS'
          , # values: S3_DATA_EVENTS, EKS_AUDIT_LOGS, EBS_MALWARE_PROTECTION, RDS_LOGIN_EVENTS, EKS_RUNTIME_MONITORING, LAMBDA_NETWORK_LOGS, RUNTIME_MONITORING; OPTIONAL
          Status => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      FindingPublishingFrequency => 'FIFTEEN_MINUTES',    # OPTIONAL
      Tags                       => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $DetectorId = $CreateDetectorResponse->DetectorId;
    my $UnprocessedDataSources =
      $CreateDetectorResponse->UnprocessedDataSources;

    # Returns a L<Paws::GuardDuty::CreateDetectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/CreateDetector>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The idempotency token for the create request.



=head2 DataSources => L<Paws::GuardDuty::DataSourceConfigurations>

Describes which data sources will be enabled for the detector.

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see Regions and endpoints
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).



=head2 B<REQUIRED> Enable => Bool

A Boolean value that specifies whether the detector is to be enabled.



=head2 Features => ArrayRef[L<Paws::GuardDuty::DetectorFeatureConfiguration>]

A list of features that will be configured for the detector.



=head2 FindingPublishingFrequency => Str

A value that specifies how frequently updated findings are exported.

Valid values are: C<"FIFTEEN_MINUTES">, C<"ONE_HOUR">, C<"SIX_HOURS">

=head2 Tags => L<Paws::GuardDuty::TagMap>

The tags to be added to a new detector resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDetector in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

