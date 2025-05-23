# Generated by default/object.tt
package Paws::SecurityHub::AutomationRulesFindingFilters;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has AwsAccountName => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has CompanyName => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ComplianceAssociatedStandardsId => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ComplianceSecurityControlId => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ComplianceStatus => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has Confidence => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::NumberFilter]');
  has CreatedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has Criticality => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::NumberFilter]');
  has Description => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has FirstObservedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has GeneratorId => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has Id => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has LastObservedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has NoteText => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has NoteUpdatedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has NoteUpdatedBy => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ProductArn => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ProductName => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has RecordState => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has RelatedFindingsId => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has RelatedFindingsProductArn => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceApplicationArn => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceApplicationName => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceDetailsOther => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::MapFilter]');
  has ResourceId => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourcePartition => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceRegion => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::MapFilter]');
  has ResourceType => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has SeverityLabel => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has SourceUrl => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has Title => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has Type => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has UpdatedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has UserDefinedFields => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::MapFilter]');
  has VerificationState => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has WorkflowStatus => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AutomationRulesFindingFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AutomationRulesFindingFilters object:

  $service_obj->Method(Att1 => { AwsAccountId => $value, ..., WorkflowStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AutomationRulesFindingFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsAccountId

=head1 DESCRIPTION

The criteria that determine which findings a rule applies to.

=head1 ATTRIBUTES


=head2 AwsAccountId => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The Amazon Web Services account ID in which a finding was generated.

Array Members: Minimum number of 1 item. Maximum number of 100 items.


=head2 AwsAccountName => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The name of the Amazon Web Services account in which a finding was
generated.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 CompanyName => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The name of the company for the product that generated the finding. For
control-based findings, the company is Amazon Web Services.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 ComplianceAssociatedStandardsId => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The unique identifier of a standard in which a control is enabled. This
field consists of the resource portion of the Amazon Resource Name
(ARN) returned for a standard in the DescribeStandards
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_DescribeStandards.html)
API response.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 ComplianceSecurityControlId => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The security control ID for which a finding was generated. Security
control IDs are the same across standards.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 ComplianceStatus => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The result of a security check. This field is only used for findings
generated from controls.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 Confidence => ArrayRef[L<Paws::SecurityHub::NumberFilter>]

The likelihood that a finding accurately identifies the behavior or
issue that it was intended to identify. C<Confidence> is scored on a
0E<ndash>100 basis using a ratio scale. A value of C<0> means 0 percent
confidence, and a value of C<100> means 100 percent confidence. For
example, a data exfiltration detection based on a statistical deviation
of network traffic has low confidence because an actual exfiltration
hasn't been verified. For more information, see Confidence
(https://docs.aws.amazon.com/securityhub/latest/userguide/asff-top-level-attributes.html#asff-confidence)
in the I<Security Hub User Guide>.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 CreatedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

A timestamp that indicates when this finding record was created.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 Criticality => ArrayRef[L<Paws::SecurityHub::NumberFilter>]

The level of importance that is assigned to the resources that are
associated with a finding. C<Criticality> is scored on a 0E<ndash>100
basis, using a ratio scale that supports only full integers. A score of
C<0> means that the underlying resources have no criticality, and a
score of C<100> is reserved for the most critical resources. For more
information, see Criticality
(https://docs.aws.amazon.com/securityhub/latest/userguide/asff-top-level-attributes.html#asff-criticality)
in the I<Security Hub User Guide>.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 Description => ArrayRef[L<Paws::SecurityHub::StringFilter>]

A finding's description.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 FirstObservedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

A timestamp that indicates when the potential security issue captured
by a finding was first observed by the security findings product.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 GeneratorId => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The identifier for the solution-specific component that generated a
finding.

Array Members: Minimum number of 1 item. Maximum number of 100 items.


=head2 Id => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The product-specific identifier for a finding.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 LastObservedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

A timestamp that indicates when the security findings provider most
recently observed a change in the resource that is involved in the
finding.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 NoteText => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The text of a user-defined note that's added to a finding.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 NoteUpdatedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

The timestamp of when the note was updated.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 NoteUpdatedBy => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The principal that created a note.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 ProductArn => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The Amazon Resource Name (ARN) for a third-party product that generated
a finding in Security Hub.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 ProductName => ArrayRef[L<Paws::SecurityHub::StringFilter>]

Provides the name of the product that generated the finding. For
control-based findings, the product name is Security Hub.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 RecordState => ArrayRef[L<Paws::SecurityHub::StringFilter>]

Provides the current state of a finding.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 RelatedFindingsId => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The product-generated identifier for a related finding.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 RelatedFindingsProductArn => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The ARN for the product that generated a related finding.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 ResourceApplicationArn => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The Amazon Resource Name (ARN) of the application that is related to a
finding.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 ResourceApplicationName => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The name of the application that is related to a finding.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 ResourceDetailsOther => ArrayRef[L<Paws::SecurityHub::MapFilter>]

Custom fields and values about the resource that a finding pertains to.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 ResourceId => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The identifier for the given resource type. For Amazon Web Services
resources that are identified by Amazon Resource Names (ARNs), this is
the ARN. For Amazon Web Services resources that lack ARNs, this is the
identifier as defined by the Amazon Web Services service that created
the resource. For non-Amazon Web Services resources, this is a unique
identifier that is associated with the resource.

Array Members: Minimum number of 1 item. Maximum number of 100 items.


=head2 ResourcePartition => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The partition in which the resource that the finding pertains to is
located. A partition is a group of Amazon Web Services Regions. Each
Amazon Web Services account is scoped to one partition.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 ResourceRegion => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The Amazon Web Services Region where the resource that a finding
pertains to is located.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 ResourceTags => ArrayRef[L<Paws::SecurityHub::MapFilter>]

A list of Amazon Web Services tags associated with a resource at the
time the finding was processed.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 ResourceType => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The type of resource that the finding pertains to.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 SeverityLabel => ArrayRef[L<Paws::SecurityHub::StringFilter>]

The severity value of the finding.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 SourceUrl => ArrayRef[L<Paws::SecurityHub::StringFilter>]

Provides a URL that links to a page about the current finding in the
finding product.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 Title => ArrayRef[L<Paws::SecurityHub::StringFilter>]

A finding's title.

Array Members: Minimum number of 1 item. Maximum number of 100 items.


=head2 Type => ArrayRef[L<Paws::SecurityHub::StringFilter>]

One or more finding types in the format of
namespace/category/classifier that classify a finding. For a list of
namespaces, classifiers, and categories, see Types taxonomy for ASFF
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format-type-taxonomy.html)
in the I<Security Hub User Guide>.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 UpdatedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

A timestamp that indicates when the finding record was most recently
updated.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 UserDefinedFields => ArrayRef[L<Paws::SecurityHub::MapFilter>]

A list of user-defined name and value string pairs added to a finding.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 VerificationState => ArrayRef[L<Paws::SecurityHub::StringFilter>]

Provides the veracity of a finding.

Array Members: Minimum number of 1 item. Maximum number of 20 items.


=head2 WorkflowStatus => ArrayRef[L<Paws::SecurityHub::StringFilter>]

Provides information about the status of the investigation into a
finding.

Array Members: Minimum number of 1 item. Maximum number of 20 items.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

