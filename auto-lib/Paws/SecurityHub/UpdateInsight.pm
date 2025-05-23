
package Paws::SecurityHub::UpdateInsight;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::SecurityHub::AwsSecurityFindingFilters');
  has GroupByAttribute => (is => 'ro', isa => 'Str');
  has InsightArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InsightArn', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInsight');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/insights/{InsightArn+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::UpdateInsightResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::UpdateInsight - Arguments for method UpdateInsight on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInsight on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method UpdateInsight.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInsight.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $UpdateInsightResponse = $securityhub->UpdateInsight(
      InsightArn => 'MyNonEmptyString',
      Filters    => {
        AwsAccountId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        AwsAccountName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        CompanyName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ComplianceAssociatedStandardsId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ComplianceSecurityControlId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ComplianceSecurityControlParametersName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ComplianceSecurityControlParametersValue => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ComplianceStatus => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        Confidence => [
          {
            Eq  => 1,    # OPTIONAL
            Gt  => 1,    # OPTIONAL
            Gte => 1,    # OPTIONAL
            Lt  => 1,    # OPTIONAL
            Lte => 1,    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        CreatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        Criticality => [
          {
            Eq  => 1,    # OPTIONAL
            Gt  => 1,    # OPTIONAL
            Gte => 1,    # OPTIONAL
            Lt  => 1,    # OPTIONAL
            Lte => 1,    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Description => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        FindingProviderFieldsConfidence => [
          {
            Eq  => 1,    # OPTIONAL
            Gt  => 1,    # OPTIONAL
            Gte => 1,    # OPTIONAL
            Lt  => 1,    # OPTIONAL
            Lte => 1,    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        FindingProviderFieldsCriticality => [
          {
            Eq  => 1,    # OPTIONAL
            Gt  => 1,    # OPTIONAL
            Gte => 1,    # OPTIONAL
            Lt  => 1,    # OPTIONAL
            Lte => 1,    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        FindingProviderFieldsRelatedFindingsId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        FindingProviderFieldsRelatedFindingsProductArn => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        FindingProviderFieldsSeverityLabel => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        FindingProviderFieldsSeverityOriginal => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        FindingProviderFieldsTypes => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        FirstObservedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        GeneratorId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        Id => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        Keyword        => [ { Value => 'MyNonEmptyString', }, ... ],  # OPTIONAL
        LastObservedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        MalwareName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        MalwarePath => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        MalwareState => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        MalwareType => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        NetworkDestinationDomain => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        NetworkDestinationIpV4 => [ { Cidr => 'MyNonEmptyString', }, ... ]
        ,     # OPTIONAL
        NetworkDestinationIpV6 => [ { Cidr => 'MyNonEmptyString', }, ... ]
        ,     # OPTIONAL
        NetworkDestinationPort => [
          {
            Eq  => 1,    # OPTIONAL
            Gt  => 1,    # OPTIONAL
            Gte => 1,    # OPTIONAL
            Lt  => 1,    # OPTIONAL
            Lte => 1,    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        NetworkDirection => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        NetworkProtocol => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        NetworkSourceDomain => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        NetworkSourceIpV4 => [ { Cidr => 'MyNonEmptyString', }, ... ]
        ,     # OPTIONAL
        NetworkSourceIpV6 => [ { Cidr => 'MyNonEmptyString', }, ... ]
        ,     # OPTIONAL
        NetworkSourceMac => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        NetworkSourcePort => [
          {
            Eq  => 1,    # OPTIONAL
            Gt  => 1,    # OPTIONAL
            Gte => 1,    # OPTIONAL
            Lt  => 1,    # OPTIONAL
            Lte => 1,    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        NoteText => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        NoteUpdatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        NoteUpdatedBy => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ProcessLaunchedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ProcessName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ProcessParentPid => [
          {
            Eq  => 1,    # OPTIONAL
            Gt  => 1,    # OPTIONAL
            Gte => 1,    # OPTIONAL
            Lt  => 1,    # OPTIONAL
            Lte => 1,    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        ProcessPath => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ProcessPid => [
          {
            Eq  => 1,    # OPTIONAL
            Gt  => 1,    # OPTIONAL
            Gte => 1,    # OPTIONAL
            Lt  => 1,    # OPTIONAL
            Lte => 1,    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        ProcessTerminatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ProductArn => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ProductFields => [
          {
            Comparison => 'EQUALS'
            ,    # values: EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Key   => 'MyNonEmptyString',
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ProductName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        RecommendationText => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        RecordState => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        Region => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        RelatedFindingsId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        RelatedFindingsProductArn => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceApplicationArn => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceApplicationName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceAwsEc2InstanceIamInstanceProfileArn => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceAwsEc2InstanceImageId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceAwsEc2InstanceIpV4Addresses =>
          [ { Cidr => 'MyNonEmptyString', }, ... ],    # OPTIONAL
        ResourceAwsEc2InstanceIpV6Addresses =>
          [ { Cidr => 'MyNonEmptyString', }, ... ],    # OPTIONAL
        ResourceAwsEc2InstanceKeyName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceAwsEc2InstanceLaunchedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceAwsEc2InstanceSubnetId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceAwsEc2InstanceType => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceAwsEc2InstanceVpcId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceAwsIamAccessKeyCreatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceAwsIamAccessKeyPrincipalName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceAwsIamAccessKeyStatus => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceAwsIamAccessKeyUserName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceAwsIamUserUserName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceAwsS3BucketOwnerId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceAwsS3BucketOwnerName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceContainerImageId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceContainerImageName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceContainerLaunchedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceContainerName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceDetailsOther => [
          {
            Comparison => 'EQUALS'
            ,    # values: EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Key   => 'MyNonEmptyString',
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourcePartition => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceRegion => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceTags => [
          {
            Comparison => 'EQUALS'
            ,    # values: EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Key   => 'MyNonEmptyString',
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceType => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        Sample => [
          {
            Value => 1,    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        SeverityLabel => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        SeverityNormalized => [
          {
            Eq  => 1,    # OPTIONAL
            Gt  => 1,    # OPTIONAL
            Gte => 1,    # OPTIONAL
            Lt  => 1,    # OPTIONAL
            Lte => 1,    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        SeverityProduct => [
          {
            Eq  => 1,    # OPTIONAL
            Gt  => 1,    # OPTIONAL
            Gte => 1,    # OPTIONAL
            Lt  => 1,    # OPTIONAL
            Lte => 1,    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        SourceUrl => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ThreatIntelIndicatorCategory => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ThreatIntelIndicatorLastObservedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ThreatIntelIndicatorSource => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ThreatIntelIndicatorSourceUrl => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ThreatIntelIndicatorType => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ThreatIntelIndicatorValue => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        Title => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        Type => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        UpdatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        UserDefinedFields => [
          {
            Comparison => 'EQUALS'
            ,    # values: EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Key   => 'MyNonEmptyString',
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        VerificationState => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        VulnerabilitiesExploitAvailable => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        VulnerabilitiesFixAvailable => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        WorkflowState => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        WorkflowStatus => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      GroupByAttribute => 'MyNonEmptyString',    # OPTIONAL
      Name             => 'MyNonEmptyString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/UpdateInsight>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>

The updated filters that define this insight.



=head2 GroupByAttribute => Str

The updated C<GroupBy> attribute that defines this insight.



=head2 B<REQUIRED> InsightArn => Str

The ARN of the insight that you want to update.



=head2 Name => Str

The updated name for the insight.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInsight in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

