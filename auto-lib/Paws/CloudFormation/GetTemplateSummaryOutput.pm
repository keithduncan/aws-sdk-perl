
package Paws::CloudFormation::GetTemplateSummaryOutput;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CapabilitiesReason => (is => 'ro', isa => 'Str');
  has DeclaredTransforms => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Description => (is => 'ro', isa => 'Str');
  has Metadata => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ParameterDeclaration]');
  has ResourceIdentifierSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ResourceIdentifierSummary]');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Version => (is => 'ro', isa => 'Str');
  has Warnings => (is => 'ro', isa => 'Paws::CloudFormation::Warnings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::GetTemplateSummaryOutput

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

The capabilities found within the template. If your template contains
IAM resources, you must specify the C<CAPABILITY_IAM> or
C<CAPABILITY_NAMED_IAM> value for this parameter when you use the
CreateStack or UpdateStack actions with your template; otherwise, those
actions return an C<InsufficientCapabilities> error.

For more information, see Acknowledging IAM resources in CloudFormation
templates
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities).


=head2 CapabilitiesReason => Str

The list of resources that generated the values in the C<Capabilities>
response element.


=head2 DeclaredTransforms => ArrayRef[Str|Undef]

A list of the transforms that are declared in the template.


=head2 Description => Str

The value that's defined in the C<Description> property of the
template.


=head2 Metadata => Str

The value that's defined for the C<Metadata> property of the template.


=head2 Parameters => ArrayRef[L<Paws::CloudFormation::ParameterDeclaration>]

A list of parameter declarations that describe various properties for
each parameter.


=head2 ResourceIdentifierSummaries => ArrayRef[L<Paws::CloudFormation::ResourceIdentifierSummary>]

A list of resource identifier summaries that describe the target
resources of an import operation and the properties you can provide
during the import to identify the target resources. For example,
C<BucketName> is a possible identifier property for an
C<AWS::S3::Bucket> resource.


=head2 ResourceTypes => ArrayRef[Str|Undef]

A list of all the template resource types that are defined in the
template, such as C<AWS::EC2::Instance>, C<AWS::Dynamo::Table>, and
C<Custom::MyCustomInstance>.


=head2 Version => Str

The Amazon Web Services template format version, which identifies the
capabilities of the template.


=head2 Warnings => L<Paws::CloudFormation::Warnings>

An object containing any warnings returned.


=head2 _request_id => Str


=cut

