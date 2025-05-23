# Generated by default/object.tt
package Paws::AuditManager::SourceKeyword;
  use Moose;
  has KeywordInputType => (is => 'ro', isa => 'Str', request_name => 'keywordInputType', traits => ['NameInRequest']);
  has KeywordValue => (is => 'ro', isa => 'Str', request_name => 'keywordValue', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::SourceKeyword

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AuditManager::SourceKeyword object:

  $service_obj->Method(Att1 => { KeywordInputType => $value, ..., KeywordValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AuditManager::SourceKeyword object:

  $result = $service_obj->Method(...);
  $result->Att1->KeywordInputType

=head1 DESCRIPTION

A keyword that relates to the control data source.

For manual evidence, this keyword indicates if the manual evidence is a
file or text.

For automated evidence, this keyword identifies a specific CloudTrail
event, Config rule, Security Hub control, or Amazon Web Services API
name.

To learn more about the supported keywords that you can use when
mapping a control data source, see the following pages in the I<Audit
Manager User Guide>:

=over

=item *

Config rules supported by Audit Manager
(https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-config.html)

=item *

Security Hub controls supported by Audit Manager
(https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-ash.html)

=item *

API calls supported by Audit Manager
(https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-api.html)

=item *

CloudTrail event names supported by Audit Manager
(https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-cloudtrail.html)

=back


=head1 ATTRIBUTES


=head2 KeywordInputType => Str

The input method for the keyword.

=over

=item *

C<SELECT_FROM_LIST> is used when mapping a data source for automated
evidence.

=over

=item *

When C<keywordInputType> is C<SELECT_FROM_LIST>, a keyword must be
selected to collect automated evidence. For example, this keyword can
be a CloudTrail event name, a rule name for Config, a Security Hub
control, or the name of an Amazon Web Services API call.

=back

=item *

C<UPLOAD_FILE> and C<INPUT_TEXT> are only used when mapping a data
source for manual evidence.

=over

=item *

When C<keywordInputType> is C<UPLOAD_FILE>, a file must be uploaded as
manual evidence.

=item *

When C<keywordInputType> is C<INPUT_TEXT>, text must be entered as
manual evidence.

=back

=back



=head2 KeywordValue => Str

The value of the keyword that's used when mapping a control data
source. For example, this can be a CloudTrail event name, a rule name
for Config, a Security Hub control, or the name of an Amazon Web
Services API call.

If youE<rsquo>re mapping a data source to a rule in Config, the
C<keywordValue> that you specify depends on the type of rule:

=over

=item *

For managed rules
(https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html),
you can use the rule identifier as the C<keywordValue>. You can find
the rule identifier from the list of Config managed rules
(https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).
For some rules, the rule identifier is different from the rule name.
For example, the rule name C<restricted-ssh> has the following rule
identifier: C<INCOMING_SSH_DISABLED>. Make sure to use the rule
identifier, not the rule name.

Keyword example for managed rules:

=over

=item *

Managed rule name: s3-bucket-acl-prohibited
(https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-acl-prohibited.html)

C<keywordValue>: C<S3_BUCKET_ACL_PROHIBITED>

=back

=item *

For custom rules
(https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html),
you form the C<keywordValue> by adding the C<Custom_> prefix to the
rule name. This prefix distinguishes the custom rule from a managed
rule.

Keyword example for custom rules:

=over

=item *

Custom rule name: my-custom-config-rule

C<keywordValue>: C<Custom_my-custom-config-rule>

=back

=item *

For service-linked rules
(https://docs.aws.amazon.com/config/latest/developerguide/service-linked-awsconfig-rules.html),
you form the C<keywordValue> by adding the C<Custom_> prefix to the
rule name. In addition, you remove the suffix ID that appears at the
end of the rule name.

Keyword examples for service-linked rules:

=over

=item *

Service-linked rule name:
CustomRuleForAccount-conformance-pack-szsm1uv0w

C<keywordValue>: C<Custom_CustomRuleForAccount-conformance-pack>

=item *

Service-linked rule name:
OrgConfigRule-s3-bucket-versioning-enabled-dbgzf8ba

C<keywordValue>: C<Custom_OrgConfigRule-s3-bucket-versioning-enabled>

=back

=back

The C<keywordValue> is case sensitive. If you enter a value
incorrectly, Audit Manager might not recognize the data source mapping.
As a result, you might not successfully collect evidence from that data
source as intended.

Keep in mind the following requirements, depending on the data source
type that you're using.

=over

=item 1.

For Config:

=over

=item *

For managed rules, make sure that the C<keywordValue> is the rule
identifier in C<ALL_CAPS_WITH_UNDERSCORES>. For example,
C<CLOUDWATCH_LOG_GROUP_ENCRYPTED>. For accuracy, we recommend that you
reference the list of supported Config managed rules
(https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-config.html).

=item *

For custom rules, make sure that the C<keywordValue> has the C<Custom_>
prefix followed by the custom rule name. The format of the custom rule
name itself may vary. For accuracy, we recommend that you visit the
Config console (https://console.aws.amazon.com/config/) to verify your
custom rule name.

=back

=item 2.

For Security Hub: The format varies for Security Hub control names. For
accuracy, we recommend that you reference the list of supported
Security Hub controls
(https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-ash.html).

=item 3.

For Amazon Web Services API calls: Make sure that the C<keywordValue>
is written as C<serviceprefix_ActionName>. For example,
C<iam_ListGroups>. For accuracy, we recommend that you reference the
list of supported API calls
(https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-api.html).

=item 4.

For CloudTrail: Make sure that the C<keywordValue> is written as
C<serviceprefix_ActionName>. For example, C<cloudtrail_StartLogging>.
For accuracy, we recommend that you review the Amazon Web Service
prefix and action names in the Service Authorization Reference
(https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html).

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

