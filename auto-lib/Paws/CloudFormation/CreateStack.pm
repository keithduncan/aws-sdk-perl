
package Paws::CloudFormation::CreateStack;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DisableRollback => (is => 'ro', isa => 'Bool');
  has EnableTerminationProtection => (is => 'ro', isa => 'Bool');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OnFailure => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RetainExceptOnCreate => (is => 'ro', isa => 'Bool');
  has RoleARN => (is => 'ro', isa => 'Str');
  has RollbackConfiguration => (is => 'ro', isa => 'Paws::CloudFormation::RollbackConfiguration');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackPolicyBody => (is => 'ro', isa => 'Str');
  has StackPolicyURL => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');
  has TimeoutInMinutes => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::CreateStackOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateStack - Arguments for method CreateStack on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStack on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method CreateStack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStack.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $CreateStackOutput = $cloudformation->CreateStack(
      StackName    => 'MyStackName',
      Capabilities => [
        'CAPABILITY_IAM',
        ... # values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
      ],    # OPTIONAL
      ClientRequestToken          => 'MyClientRequestToken',          # OPTIONAL
      DisableRollback             => 1,                               # OPTIONAL
      EnableTerminationProtection => 1,                               # OPTIONAL
      NotificationARNs            => [ 'MyNotificationARN', ... ],    # OPTIONAL
      OnFailure                   => 'DO_NOTHING',                    # OPTIONAL
      Parameters                  => [
        {
          ParameterKey     => 'MyParameterKey',      # OPTIONAL
          ParameterValue   => 'MyParameterValue',    # OPTIONAL
          ResolvedValue    => 'MyParameterValue',    # OPTIONAL
          UsePreviousValue => 1,                     # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ResourceTypes => [
        'MyResourceType', ...    # min: 1, max: 256
      ],    # OPTIONAL
      RetainExceptOnCreate  => 1,              # OPTIONAL
      RoleARN               => 'MyRoleARN',    # OPTIONAL
      RollbackConfiguration => {
        MonitoringTimeInMinutes => 1,          # max: 180; OPTIONAL
        RollbackTriggers        => [
          {
            Arn  => 'MyArn',
            Type => 'MyType',

          },
          ...
        ],                                     # max: 5; OPTIONAL
      },    # OPTIONAL
      StackPolicyBody => 'MyStackPolicyBody',    # OPTIONAL
      StackPolicyURL  => 'MyStackPolicyURL',     # OPTIONAL
      Tags            => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
      TemplateBody     => 'MyTemplateBody',    # OPTIONAL
      TemplateURL      => 'MyTemplateURL',     # OPTIONAL
      TimeoutInMinutes => 1,                   # OPTIONAL
    );

    # Results:
    my $StackId = $CreateStackOutput->StackId;

    # Returns a L<Paws::CloudFormation::CreateStackOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/CreateStack>

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

In some cases, you must explicitly acknowledge that your stack template
contains certain capabilities in order for CloudFormation to create the
stack.

=over

=item *

C<CAPABILITY_IAM> and C<CAPABILITY_NAMED_IAM>

Some stack templates might include resources that can affect
permissions in your Amazon Web Services account; for example, by
creating new IAM users. For those stacks, you must explicitly
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

AWS::IAM::ManagedPolicy
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html)

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

Some template contain macros. Macros perform custom processing on
templates; this can include simple actions like find-and-replace
operations, all the way to extensive transformations of entire
templates. Because of this, users typically create a change set from
the processed template, so that they can review the changes resulting
from the macros before actually creating the stack. If your stack
template contains one or more macros, and you choose to create a stack
directly from the processed template, without first reviewing the
resulting changes in a change set, you must acknowledge this
capability. This includes the AWS::Include
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html)
and AWS::Serverless
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html)
transforms, which are macros hosted by CloudFormation.

If you want to create a stack from a stack template that contains
macros I<and> nested stacks, you must create the stack directly from
the template using this capability.

You should only create stacks directly from a stack template that
contains macros if you know what processing the macro performs.

Each macro relies on an underlying Lambda service function for
processing stack templates. Be aware that the Lambda function owner can
update the function operation without CloudFormation being notified.

For more information, see Perform custom processing on CloudFormation
templates with template macros
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html).

=back

Only one of the C<Capabilities> and C<ResourceType> parameters can be
specified.



=head2 ClientRequestToken => Str

A unique identifier for this C<CreateStack> request. Specify this token
if you plan to retry requests so that CloudFormation knows that you're
not attempting to create a stack with the same name. You might retry
C<CreateStack> requests to ensure that CloudFormation successfully
received them.

All events initiated by a given stack operation are assigned the same
client request token, which you can use to track operations. For
example, if you execute a C<CreateStack> operation with the token
C<token1>, then all the C<StackEvents> generated by that operation will
have C<ClientRequestToken> set as C<token1>.

In the console, stack operations display the client request token on
the Events tab. Stack operations that are initiated from the console
use the token format I<Console-StackOperation-ID>, which helps you
easily identify the stack operation . For example, if you create a
stack using the console, each stack event would be assigned the same
token in the following format:
C<Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002>.



=head2 DisableRollback => Bool

Set to C<true> to disable rollback of the stack if stack creation
failed. You can specify either C<DisableRollback> or C<OnFailure>, but
not both.

Default: C<false>



=head2 EnableTerminationProtection => Bool

Whether to enable termination protection on the specified stack. If a
user attempts to delete a stack with termination protection enabled,
the operation fails and the stack remains unchanged. For more
information, see Protect CloudFormation stacks from being deleted
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html)
in the I<CloudFormation User Guide>. Termination protection is
deactivated on stacks by default.

For nested stacks
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html),
termination protection is set on the root stack and can't be changed
directly on the nested stack.



=head2 NotificationARNs => ArrayRef[Str|Undef]

The Amazon SNS topic ARNs to publish stack related events. You can find
your Amazon SNS topic ARNs using the Amazon SNS console or your Command
Line Interface (CLI).



=head2 OnFailure => Str

Determines what action will be taken if stack creation fails. This must
be one of: C<DO_NOTHING>, C<ROLLBACK>, or C<DELETE>. You can specify
either C<OnFailure> or C<DisableRollback>, but not both.

Default: C<ROLLBACK>

Valid values are: C<"DO_NOTHING">, C<"ROLLBACK">, C<"DELETE">

=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

A list of C<Parameter> structures that specify input parameters for the
stack. For more information, see the Parameter
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html)
data type.



=head2 ResourceTypes => ArrayRef[Str|Undef]

The template resource types that you have permissions to work with for
this create stack action, such as C<AWS::EC2::Instance>,
C<AWS::EC2::*>, or C<Custom::MyCustomInstance>. Use the following
syntax to describe template resource types: C<AWS::*> (for all Amazon
Web Services resources), C<Custom::*> (for all custom resources),
C<Custom::I<logical_ID> > (for a specific custom resource),
C<AWS::I<service_name>::*> (for all resources of a particular Amazon
Web Services service), and
C<AWS::I<service_name>::I<resource_logical_ID> > (for a specific Amazon
Web Services resource).

If the list of resource types doesn't include a resource that you're
creating, the stack creation fails. By default, CloudFormation grants
permissions to all resource types. IAM uses this parameter for
CloudFormation-specific condition keys in IAM policies. For more
information, see Control access with Identity and Access Management
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html).

Only one of the C<Capabilities> and C<ResourceType> parameters can be
specified.



=head2 RetainExceptOnCreate => Bool

When set to C<true>, newly created resources are deleted when the
operation rolls back. This includes newly created resources marked with
a deletion policy of C<Retain>.

Default: C<false>



=head2 RoleARN => Str

The Amazon Resource Name (ARN) of an IAM role that CloudFormation
assumes to create the stack. CloudFormation uses the role's credentials
to make calls on your behalf. CloudFormation always uses this role for
all future operations on the stack. Provided that users have permission
to operate on the stack, CloudFormation uses this role even if the
users don't have permission to pass it. Ensure that the role grants
least privilege.

If you don't specify a value, CloudFormation uses the role that was
previously associated with the stack. If no role is available,
CloudFormation uses a temporary session that's generated from your user
credentials.



=head2 RollbackConfiguration => L<Paws::CloudFormation::RollbackConfiguration>

The rollback triggers for CloudFormation to monitor during stack
creation and updating operations, and for the specified monitoring
period afterwards.



=head2 B<REQUIRED> StackName => Str

The name that's associated with the stack. The name must be unique in
the Region in which you are creating the stack.

A stack name can contain only alphanumeric characters (case sensitive)
and hyphens. It must start with an alphabetical character and can't be
longer than 128 characters.



=head2 StackPolicyBody => Str

Structure containing the stack policy body. For more information, see
Prevent updates to stack resources
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html)
in the I<CloudFormation User Guide>. You can specify either the
C<StackPolicyBody> or the C<StackPolicyURL> parameter, but not both.



=head2 StackPolicyURL => Str

Location of a file containing the stack policy. The URL must point to a
policy (maximum size: 16 KB) located in an S3 bucket in the same Region
as the stack. The location for an Amazon S3 bucket must start with
C<https://>. You can specify either the C<StackPolicyBody> or the
C<StackPolicyURL> parameter, but not both.



=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

Key-value pairs to associate with this stack. CloudFormation also
propagates these tags to the resources created in the stack. A maximum
number of 50 tags can be specified.



=head2 TemplateBody => Str

Structure containing the template body with a minimum length of 1 byte
and a maximum length of 51,200 bytes.

Conditional: You must specify either the C<TemplateBody> or the
C<TemplateURL> parameter, but not both.



=head2 TemplateURL => Str

The URL of a file containing the template body. The URL must point to a
template (max size: 1 MB) that's located in an Amazon S3 bucket or a
Systems Manager document. The location for an Amazon S3 bucket must
start with C<https://>.

Conditional: You must specify either the C<TemplateBody> or the
C<TemplateURL> parameter, but not both.



=head2 TimeoutInMinutes => Int

The amount of time that can pass before the stack status becomes
C<CREATE_FAILED>; if C<DisableRollback> is not set or is set to
C<false>, the stack will be rolled back.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStack in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

