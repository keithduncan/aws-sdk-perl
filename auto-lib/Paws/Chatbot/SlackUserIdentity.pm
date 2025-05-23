# Generated by default/object.tt
package Paws::Chatbot::SlackUserIdentity;
  use Moose;
  has AwsUserIdentity => (is => 'ro', isa => 'Str');
  has ChatConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has IamRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SlackTeamId => (is => 'ro', isa => 'Str', required => 1);
  has SlackUserId => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::SlackUserIdentity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chatbot::SlackUserIdentity object:

  $service_obj->Method(Att1 => { AwsUserIdentity => $value, ..., SlackUserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chatbot::SlackUserIdentity object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsUserIdentity

=head1 DESCRIPTION

Identifes a user level permission for a channel configuration.

=head1 ATTRIBUTES


=head2 AwsUserIdentity => Str

The AWS user identity ARN used to associate a Slack user ID with an IAM
Role.


=head2 B<REQUIRED> ChatConfigurationArn => Str

The Amazon Resource Name (ARN) of the SlackChannelConfiguration
associated with the user identity to delete.


=head2 B<REQUIRED> IamRoleArn => Str

A user-defined role that AWS Chatbot assumes. This is not the
service-linked role.

For more information, see IAM policies for AWS Chatbot
(https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html)
in the I< AWS Chatbot Administrator Guide>.


=head2 B<REQUIRED> SlackTeamId => Str

The ID of the Slack workspace authorized with AWS Chatbot.


=head2 B<REQUIRED> SlackUserId => Str

The ID of the user in Slack



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

