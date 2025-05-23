# Generated by default/object.tt
package Paws::Chatbot::SlackChannelConfiguration;
  use Moose;
  has ChatConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has ConfigurationName => (is => 'ro', isa => 'Str');
  has GuardrailPolicyArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IamRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has LoggingLevel => (is => 'ro', isa => 'Str');
  has SlackChannelId => (is => 'ro', isa => 'Str', required => 1);
  has SlackChannelName => (is => 'ro', isa => 'Str', required => 1);
  has SlackTeamId => (is => 'ro', isa => 'Str', required => 1);
  has SlackTeamName => (is => 'ro', isa => 'Str', required => 1);
  has SnsTopicArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has State => (is => 'ro', isa => 'Str');
  has StateReason => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Chatbot::Tag]');
  has UserAuthorizationRequired => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::SlackChannelConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chatbot::SlackChannelConfiguration object:

  $service_obj->Method(Att1 => { ChatConfigurationArn => $value, ..., UserAuthorizationRequired => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chatbot::SlackChannelConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ChatConfigurationArn

=head1 DESCRIPTION

An AWS Chatbot configuration for Slack.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChatConfigurationArn => Str

The Amazon Resource Name (ARN) of the SlackChannelConfiguration.


=head2 ConfigurationName => Str

The name of the configuration.


=head2 GuardrailPolicyArns => ArrayRef[Str|Undef]

The list of IAM policy ARNs that are applied as channel guardrails. The
AWS managed C<AdministratorAccess> policy is applied by default if this
is not set.


=head2 B<REQUIRED> IamRoleArn => Str

A user-defined role that AWS Chatbot assumes. This is not the
service-linked role.

For more information, see IAM policies for AWS Chatbot
(https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html)
in the I< AWS Chatbot Administrator Guide>.


=head2 LoggingLevel => Str

Logging levels include C<ERROR>, C<INFO>, or C<NONE>.


=head2 B<REQUIRED> SlackChannelId => Str

The ID of the Slack channel.

To get this ID, open Slack, right click on the channel name in the left
pane, then choose Copy Link. The channel ID is the 9-character string
at the end of the URL. For example, ABCBBLZZZ.


=head2 B<REQUIRED> SlackChannelName => Str

The name of the Slack channel.


=head2 B<REQUIRED> SlackTeamId => Str

The ID of the Slack workspace authorized with Amazon Chime.


=head2 B<REQUIRED> SlackTeamName => Str

Name of the Slack workspace.


=head2 B<REQUIRED> SnsTopicArns => ArrayRef[Str|Undef]

The ARNs of the SNS topics that deliver notifications to AWS Chatbot.


=head2 State => Str

Either C<ENABLED> or C<DISABLED>. The resource returns C<DISABLED> if
the organization's AWS Chatbot policy has explicitly denied that
configuration. For example, if Amazon Chime is disabled.


=head2 StateReason => Str

Provided if State is C<DISABLED>. Provides context as to why the
resource is disabled.


=head2 Tags => ArrayRef[L<Paws::Chatbot::Tag>]

A map of tags assigned to a resource. A tag is a string-to-string map
of key-value pairs.


=head2 UserAuthorizationRequired => Bool

Enables use of a user role requirement in your chat configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

