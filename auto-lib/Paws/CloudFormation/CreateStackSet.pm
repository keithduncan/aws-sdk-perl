
package Paws::CloudFormation::CreateStackSet;
  use Moose;
  has AdministrationRoleARN => (is => 'ro', isa => 'Str');
  has AutoDeployment => (is => 'ro', isa => 'Paws::CloudFormation::AutoDeployment');
  has CallAs => (is => 'ro', isa => 'Str');
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionRoleName => (is => 'ro', isa => 'Str');
  has ManagedExecution => (is => 'ro', isa => 'Paws::CloudFormation::ManagedExecution');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has PermissionModel => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStackSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::CreateStackSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateStackSet - Arguments for method CreateStackSet on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStackSet on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method CreateStackSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStackSet.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $CreateStackSetOutput = $cloudformation->CreateStackSet(
      StackSetName          => 'MyStackSetName',
      AdministrationRoleARN => 'MyRoleARN',        # OPTIONAL
      AutoDeployment        => {
        Enabled                      => 1,         # OPTIONAL
        RetainStacksOnAccountRemoval => 1,         # OPTIONAL
      },    # OPTIONAL
      CallAs       => 'SELF',    # OPTIONAL
      Capabilities => [
        'CAPABILITY_IAM',
        ... # values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
      ],    # OPTIONAL
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Description        => 'MyDescription',           # OPTIONAL
      ExecutionRoleName  => 'MyExecutionRoleName',     # OPTIONAL
      ManagedExecution   => {
        Active => 1,                                   # OPTIONAL
      },    # OPTIONAL
      Parameters => [
        {
          ParameterKey     => 'MyParameterKey',      # OPTIONAL
          ParameterValue   => 'MyParameterValue',    # OPTIONAL
          ResolvedValue    => 'MyParameterValue',    # OPTIONAL
          UsePreviousValue => 1,                     # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      PermissionModel => 'SERVICE_MANAGED',    # OPTIONAL
      StackId         => 'MyStackId',          # OPTIONAL
      Tags            => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
      TemplateBody => 'MyTemplateBody',    # OPTIONAL
      TemplateURL  => 'MyTemplateURL',     # OPTIONAL
    );

    # Results:
    my $StackSetId = $CreateStackSetOutput->StackSetId;

    # Returns a L<Paws::CloudFormation::CreateStackSetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/CreateStackSet>

=head1 ATTRIBUTES


=head2 AdministrationRoleARN => Str

The Amazon Resource Name (ARN) of the IAM role to use to create this
stack set.

Specify an IAM role only if you are using customized administrator
roles to control which users or groups can manage specific stack sets
within the same administrator account. For more information, see Grant
self-managed permissions
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html)
in the I<CloudFormation User Guide>.

Valid only if the permissions model is C<SELF_MANAGED>.



=head2 AutoDeployment => L<Paws::CloudFormation::AutoDeployment>

Describes whether StackSets automatically deploys to Organizations
accounts that are added to the target organization or organizational
unit (OU). For more information, see Manage automatic deployments for
CloudFormation StackSets that use service-managed permissions
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-manage-auto-deployment.html)
in the I<CloudFormation User Guide>.

Required if the permissions model is C<SERVICE_MANAGED>. (Not used with
self-managed permissions.)



=head2 CallAs => Str

Specifies whether you are acting as an account administrator in the
organization's management account or as a delegated administrator in a
member account.

By default, C<SELF> is specified. Use C<SELF> for stack sets with
self-managed permissions.

=over

=item *

To create a stack set with service-managed permissions while signed in
to the management account, specify C<SELF>.

=item *

To create a stack set with service-managed permissions while signed in
to a delegated administrator account, specify C<DELEGATED_ADMIN>.

Your Amazon Web Services account must be registered as a delegated
admin in the management account. For more information, see Register a
delegated administrator
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html)
in the I<CloudFormation User Guide>.

=back

Stack sets with service-managed permissions are created in the
management account, including stack sets that are created by delegated
administrators.

Valid only if the permissions model is C<SERVICE_MANAGED>.

Valid values are: C<"SELF">, C<"DELEGATED_ADMIN">

=head2 Capabilities => ArrayRef[Str|Undef]

In some cases, you must explicitly acknowledge that your stack set
template contains certain capabilities in order for CloudFormation to
create the stack set and related stack instances.

=over

=item *

C<CAPABILITY_IAM> and C<CAPABILITY_NAMED_IAM>

Some stack templates might include resources that can affect
permissions in your Amazon Web Services account; for example, by
creating new IAM users. For those stack sets, you must explicitly
acknowledge this by specifying one of these capabilities.

The following IAM resources require you to specify either the
C<CAPABILITY_IAM> or C<CAPABILITY_NAMED_IAM> capability.

=over

=item *

If you have IAM resources, you can specify either capability.

=item *

If you have IAM resources with custom names, you I<must> specify
C<CAPABILITY_NAMED_IAM>.

=item *

If you don't specify either of these capabilities, CloudFormation
returns an C<InsufficientCapabilities> error.

=back

If your stack template contains these resources, we recommend that you
review all permissions associated with them and edit their permissions
if necessary.

=over

=item *

AWS::IAM::AccessKey
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-accesskey.html)

=item *

AWS::IAM::Group
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-group.html)

=item *

AWS::IAM::InstanceProfile
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html)

=item *

AWS::IAM::Policy
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html)

=item *

AWS::IAM::Role
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html)

=item *

AWS::IAM::User
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-user.html)

=item *

AWS::IAM::UserToGroupAddition
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-usertogroupaddition.html)

=back

For more information, see Acknowledging IAM resources in CloudFormation
templates
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities).

=item *

C<CAPABILITY_AUTO_EXPAND>

Some templates reference macros. If your stack set template references
one or more macros, you must create the stack set directly from the
processed template, without first reviewing the resulting changes in a
change set. To create the stack set directly, you must acknowledge this
capability. For more information, see Perform custom processing on
CloudFormation templates with template macros
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html).

Stack sets with service-managed permissions don't currently support the
use of macros in templates. (This includes the AWS::Include
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html)
and AWS::Serverless
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html)
transforms, which are macros hosted by CloudFormation.) Even if you
specify this capability for a stack set with service-managed
permissions, if you reference a macro in your template the stack set
operation will fail.

=back




=head2 ClientRequestToken => Str

A unique identifier for this C<CreateStackSet> request. Specify this
token if you plan to retry requests so that CloudFormation knows that
you're not attempting to create another stack set with the same name.
You might retry C<CreateStackSet> requests to ensure that
CloudFormation successfully received them.

If you don't specify an operation ID, the SDK generates one
automatically.



=head2 Description => Str

A description of the stack set. You can use the description to identify
the stack set's purpose or other important information.



=head2 ExecutionRoleName => Str

The name of the IAM execution role to use to create the stack set. If
you do not specify an execution role, CloudFormation uses the
C<AWSCloudFormationStackSetExecutionRole> role for the stack set
operation.

Specify an IAM role only if you are using customized execution roles to
control which stack resources users and groups can include in their
stack sets.

Valid only if the permissions model is C<SELF_MANAGED>.



=head2 ManagedExecution => L<Paws::CloudFormation::ManagedExecution>

Describes whether StackSets performs non-conflicting operations
concurrently and queues conflicting operations.



=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

The input parameters for the stack set template.



=head2 PermissionModel => Str

Describes how the IAM roles required for stack set operations are
created. By default, C<SELF-MANAGED> is specified.

=over

=item *

With C<self-managed> permissions, you must create the administrator and
execution roles required to deploy to target accounts. For more
information, see Grant self-managed permissions
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html).

=item *

With C<service-managed> permissions, StackSets automatically creates
the IAM roles required to deploy to accounts managed by Organizations.
For more information, see Activate trusted access for stack sets with
Organizations
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-activate-trusted-access.html).

=back


Valid values are: C<"SERVICE_MANAGED">, C<"SELF_MANAGED">

=head2 StackId => Str

The stack ID you are importing into a new stack set. Specify the Amazon
Resource Name (ARN) of the stack.



=head2 B<REQUIRED> StackSetName => Str

The name to associate with the stack set. The name must be unique in
the Region where you create your stack set.

A stack name can contain only alphanumeric characters (case-sensitive)
and hyphens. It must start with an alphabetic character and can't be
longer than 128 characters.



=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

The key-value pairs to associate with this stack set and the stacks
created from it. CloudFormation also propagates these tags to supported
resources that are created in the stacks. A maximum number of 50 tags
can be specified.

If you specify tags as part of a C<CreateStackSet> action,
CloudFormation checks to see if you have the required IAM permission to
tag resources. If you don't, the entire C<CreateStackSet> action fails
with an C<access denied> error, and the stack set is not created.



=head2 TemplateBody => Str

The structure that contains the template body, with a minimum length of
1 byte and a maximum length of 51,200 bytes.

Conditional: You must specify either the TemplateBody or the
TemplateURL parameter, but not both.



=head2 TemplateURL => Str

The URL of a file that contains the template body. The URL must point
to a template (maximum size: 1 MB) that's located in an Amazon S3
bucket or a Systems Manager document. The location for an Amazon S3
bucket must start with C<https://>.

Conditional: You must specify either the TemplateBody or the
TemplateURL parameter, but not both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStackSet in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

