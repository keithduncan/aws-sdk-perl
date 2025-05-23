
package Paws::ServiceCatalog::DescribeProvisioningParametersOutput;
  use Moose;
  has ConstraintSummaries => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ConstraintSummary]');
  has ProvisioningArtifactOutputKeys => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProvisioningArtifactOutput]');
  has ProvisioningArtifactOutputs => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProvisioningArtifactOutput]');
  has ProvisioningArtifactParameters => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProvisioningArtifactParameter]');
  has ProvisioningArtifactPreferences => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisioningArtifactPreferences');
  has TagOptions => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::TagOptionSummary]');
  has UsageInstructions => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::UsageInstruction]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProvisioningParametersOutput

=head1 ATTRIBUTES


=head2 ConstraintSummaries => ArrayRef[L<Paws::ServiceCatalog::ConstraintSummary>]

Information about the constraints used to provision the product.


=head2 ProvisioningArtifactOutputKeys => ArrayRef[L<Paws::ServiceCatalog::ProvisioningArtifactOutput>]

A list of the keys and descriptions of the outputs. These outputs can
be referenced from a provisioned product launched from this
provisioning artifact.


=head2 ProvisioningArtifactOutputs => ArrayRef[L<Paws::ServiceCatalog::ProvisioningArtifactOutput>]

The output of the provisioning artifact.


=head2 ProvisioningArtifactParameters => ArrayRef[L<Paws::ServiceCatalog::ProvisioningArtifactParameter>]

Information about the parameters used to provision the product.


=head2 ProvisioningArtifactPreferences => L<Paws::ServiceCatalog::ProvisioningArtifactPreferences>

An object that contains information about preferences, such as Regions
and accounts, for the provisioning artifact.


=head2 TagOptions => ArrayRef[L<Paws::ServiceCatalog::TagOptionSummary>]

Information about the TagOptions associated with the resource.


=head2 UsageInstructions => ArrayRef[L<Paws::ServiceCatalog::UsageInstruction>]

Any additional metadata specifically related to the provisioning of the
product. For example, see the C<Version> field of the CloudFormation
template.


=head2 _request_id => Str


=cut

1;