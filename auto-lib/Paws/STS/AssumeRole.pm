
package Paws::STS::AssumeRole;
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has ExternalId => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has PolicyArns => (is => 'ro', isa => 'ArrayRef[Paws::STS::PolicyDescriptorType]');
  has ProvidedContexts => (is => 'ro', isa => 'ArrayRef[Paws::STS::ProvidedContext]');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleSessionName => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str');
  has SourceIdentity => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::STS::Tag]');
  has TokenCode => (is => 'ro', isa => 'Str');
  has TransitiveTagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::STS::AssumeRoleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRoleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::AssumeRole - Arguments for method AssumeRole on L<Paws::STS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssumeRole on the
L<AWS Security Token Service|Paws::STS> service. Use the attributes of this class
as arguments to method AssumeRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssumeRole.

=head1 SYNOPSIS

    my $sts = Paws->service('STS');
    # To assume a role
    my $AssumeRoleResponse = $sts->AssumeRole(
      'ExternalId' => '123ABC',
      'Policy'     =>
'{"Version":"2012-10-17","Statement":[{"Sid":"Stmt1","Effect":"Allow","Action":"s3:ListAllMyBuckets","Resource":"*"}]}',
      'RoleArn'         => 'arn:aws:iam::123456789012:role/demo',
      'RoleSessionName' => 'testAssumeRoleSession',
      'Tags'            => [

        {
          'Key'   => 'Project',
          'Value' => 'Unicorn'
        },

        {
          'Key'   => 'Team',
          'Value' => 'Automation'
        },

        {
          'Key'   => 'Cost-Center',
          'Value' => 12345
        }
      ],
      'TransitiveTagKeys' => [ 'Project', 'Cost-Center' ]
    );

    # Results:
    my $AssumedRoleUser  = $AssumeRoleResponse->AssumedRoleUser;
    my $Credentials      = $AssumeRoleResponse->Credentials;
    my $PackedPolicySize = $AssumeRoleResponse->PackedPolicySize;

    # Returns a L<Paws::STS::AssumeRoleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sts/AssumeRole>

=head1 ATTRIBUTES


=head2 DurationSeconds => Int

The duration, in seconds, of the role session. The value specified can
range from 900 seconds (15 minutes) up to the maximum session duration
set for the role. The maximum session duration setting can have a value
from 1 hour to 12 hours. If you specify a value higher than this
setting or the administrator setting (whichever is lower), the
operation fails. For example, if you specify a session duration of 12
hours, but your administrator set the maximum session duration to 6
hours, your operation fails.

Role chaining limits your Amazon Web Services CLI or Amazon Web
Services API role session to a maximum of one hour. When you use the
C<AssumeRole> API operation to assume a role, you can specify the
duration of your role session with the C<DurationSeconds> parameter.
You can specify a parameter value of up to 43200 seconds (12 hours),
depending on the maximum session duration setting for your role.
However, if you assume a role using role chaining and provide a
C<DurationSeconds> parameter value greater than one hour, the operation
fails. To learn how to view the maximum value for your role, see Update
the maximum session duration for a role
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_update-role-settings.html#id_roles_update-session-duration).

By default, the value is set to C<3600> seconds.

The C<DurationSeconds> parameter is separate from the duration of a
console session that you might request using the returned credentials.
The request to the federation endpoint for a console sign-in token
takes a C<SessionDuration> parameter that specifies the maximum length
of the console session. For more information, see Creating a URL that
Enables Federated Users to Access the Amazon Web Services Management
Console
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html)
in the I<IAM User Guide>.



=head2 ExternalId => Str

A unique identifier that might be required when you assume a role in
another account. If the administrator of the account to which the role
belongs provided you with an external ID, then provide that value in
the C<ExternalId> parameter. This value can be any string, such as a
passphrase or account number. A cross-account role is usually set up to
trust everyone in an account. Therefore, the administrator of the
trusting account might send an external ID to the administrator of the
trusted account. That way, only someone with the ID can assume the
role, rather than everyone in the account. For more information about
the external ID, see How to Use an External ID When Granting Access to
Your Amazon Web Services Resources to a Third Party
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html)
in the I<IAM User Guide>.

The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@:/-



=head2 Policy => Str

An IAM policy in JSON format that you want to use as an inline session
policy.

This parameter is optional. Passing policies to this operation returns
new temporary credentials. The resulting session's permissions are the
intersection of the role's identity-based policy and the session
policies. You can use the role's temporary credentials in subsequent
Amazon Web Services API calls to access resources in the account that
owns the role. You cannot use session policies to grant more
permissions than those allowed by the identity-based policy of the role
that is being assumed. For more information, see Session Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
in the I<IAM User Guide>.

The plaintext that you use for both inline and managed session policies
can't exceed 2,048 characters. The JSON policy characters can be any
ASCII character from the space character to the end of the valid
character list (\u0020 through \u00FF). It can also include the tab
(\u0009), linefeed (\u000A), and carriage return (\u000D) characters.

An Amazon Web Services conversion compresses the passed inline session
policy, managed policy ARNs, and session tags into a packed binary
format that has a separate limit. Your request can fail for this limit
even if your plaintext meets the other requirements. The
C<PackedPolicySize> response element indicates by percentage how close
the policies and tags for your request are to the upper size limit.

For more information about role session permissions, see Session
policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session).



=head2 PolicyArns => ArrayRef[L<Paws::STS::PolicyDescriptorType>]

The Amazon Resource Names (ARNs) of the IAM managed policies that you
want to use as managed session policies. The policies must exist in the
same account as the role.

This parameter is optional. You can provide up to 10 managed policy
ARNs. However, the plaintext that you use for both inline and managed
session policies can't exceed 2,048 characters. For more information
about ARNs, see Amazon Resource Names (ARNs) and Amazon Web Services
Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the Amazon Web Services General Reference.

An Amazon Web Services conversion compresses the passed inline session
policy, managed policy ARNs, and session tags into a packed binary
format that has a separate limit. Your request can fail for this limit
even if your plaintext meets the other requirements. The
C<PackedPolicySize> response element indicates by percentage how close
the policies and tags for your request are to the upper size limit.

Passing policies to this operation returns new temporary credentials.
The resulting session's permissions are the intersection of the role's
identity-based policy and the session policies. You can use the role's
temporary credentials in subsequent Amazon Web Services API calls to
access resources in the account that owns the role. You cannot use
session policies to grant more permissions than those allowed by the
identity-based policy of the role that is being assumed. For more
information, see Session Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
in the I<IAM User Guide>.



=head2 ProvidedContexts => ArrayRef[L<Paws::STS::ProvidedContext>]

A list of previously acquired trusted context assertions in the format
of a JSON array. The trusted context assertion is signed and encrypted
by Amazon Web Services STS.

The following is an example of a C<ProvidedContext> value that includes
a single trusted context assertion and the ARN of the context provider
from which the trusted context assertion was generated.

C<[{"ProviderArn":"arn:aws:iam::aws:contextProvider/IdentityCenter","ContextAssertion":"trusted-context-assertion"}]>



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the role to assume.



=head2 B<REQUIRED> RoleSessionName => Str

An identifier for the assumed role session.

Use the role session name to uniquely identify a session when the same
role is assumed by different principals or for different reasons. In
cross-account scenarios, the role session name is visible to, and can
be logged by the account that owns the role. The role session name is
also used in the ARN of the assumed role principal. This means that
subsequent cross-account API requests that use the temporary security
credentials will expose the role session name to the external account
in their CloudTrail logs.

For security purposes, administrators can view this field in CloudTrail
logs
(https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html#cloudtrail-integration_signin-tempcreds)
to help identify who performed an action in Amazon Web Services. Your
administrator might require that you specify your user name as the
session name when you assume the role. For more information, see
C<sts:RoleSessionName>
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_iam-condition-keys.html#ck_rolesessionname).

The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@-



=head2 SerialNumber => Str

The identification number of the MFA device that is associated with the
user who is making the C<AssumeRole> call. Specify this value if the
trust policy of the role being assumed includes a condition that
requires MFA authentication. The value is either the serial number for
a hardware device (such as C<GAHT12345678>) or an Amazon Resource Name
(ARN) for a virtual device (such as
C<arn:aws:iam::123456789012:mfa/user>).

The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@-



=head2 SourceIdentity => Str

The source identity specified by the principal that is calling the
C<AssumeRole> operation. The source identity value persists across
chained role
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html#iam-term-role-chaining)
sessions.

You can require users to specify a source identity when they assume a
role. You do this by using the C<sts:SourceIdentity>
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourceidentity)
condition key in a role trust policy. You can use source identity
information in CloudTrail logs to determine who took actions with a
role. You can use the C<aws:SourceIdentity> condition key to further
control access to Amazon Web Services resources based on the value of
source identity. For more information about using source identity, see
Monitor and control actions taken with assumed roles
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html)
in the I<IAM User Guide>.

The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: +=,.@-. You cannot use a value that begins with the text
C<aws:>. This prefix is reserved for Amazon Web Services internal use.



=head2 Tags => ArrayRef[L<Paws::STS::Tag>]

A list of session tags that you want to pass. Each session tag consists
of a key name and an associated value. For more information about
session tags, see Tagging Amazon Web Services STS Sessions
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html)
in the I<IAM User Guide>.

This parameter is optional. You can pass up to 50 session tags. The
plaintext session tag keys canE<rsquo>t exceed 128 characters, and the
values canE<rsquo>t exceed 256 characters. For these and additional
limits, see IAM and STS Character Limits
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length)
in the I<IAM User Guide>.

An Amazon Web Services conversion compresses the passed inline session
policy, managed policy ARNs, and session tags into a packed binary
format that has a separate limit. Your request can fail for this limit
even if your plaintext meets the other requirements. The
C<PackedPolicySize> response element indicates by percentage how close
the policies and tags for your request are to the upper size limit.

You can pass a session tag with the same key as a tag that is already
attached to the role. When you do, session tags override a role tag
with the same key.

Tag keyE<ndash>value pairs are not case sensitive, but case is
preserved. This means that you cannot have separate C<Department> and
C<department> tag keys. Assume that the role has the
C<Department>=C<Marketing> tag and you pass the
C<department>=C<engineering> session tag. C<Department> and
C<department> are not saved as separate tags, and the session tag
passed in the request takes precedence over the role tag.

Additionally, if you used temporary credentials to perform this
operation, the new session inherits any transitive session tags from
the calling session. If you pass a session tag with the same key as an
inherited tag, the operation fails. To view the inherited tags for a
session, see the CloudTrail logs. For more information, see Viewing
Session Tags in CloudTrail
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_ctlogs)
in the I<IAM User Guide>.



=head2 TokenCode => Str

The value provided by the MFA device, if the trust policy of the role
being assumed requires MFA. (In other words, if the policy includes a
condition that tests for MFA). If the role being assumed requires MFA
and if the C<TokenCode> value is missing or expired, the C<AssumeRole>
call returns an "access denied" error.

The format for this parameter, as described by its regex pattern, is a
sequence of six numeric digits.



=head2 TransitiveTagKeys => ArrayRef[Str|Undef]

A list of keys for session tags that you want to set as transitive. If
you set a tag key as transitive, the corresponding key and value passes
to subsequent sessions in a role chain. For more information, see
Chaining Roles with Session Tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining)
in the I<IAM User Guide>.

This parameter is optional. The transitive status of a session tag does
not impact its packed binary size.

If you choose not to specify a transitive tag key, then no tags are
passed from this session to any subsequent sessions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssumeRole in L<Paws::STS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

