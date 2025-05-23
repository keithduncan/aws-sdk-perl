# Generated by default/object.tt
package Paws::AccessAnalyzer::SnsTopicConfiguration;
  use Moose;
  has TopicPolicy => (is => 'ro', isa => 'Str', request_name => 'topicPolicy', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::SnsTopicConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AccessAnalyzer::SnsTopicConfiguration object:

  $service_obj->Method(Att1 => { TopicPolicy => $value, ..., TopicPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AccessAnalyzer::SnsTopicConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->TopicPolicy

=head1 DESCRIPTION

The proposed access control configuration for an Amazon SNS topic. You
can propose a configuration for a new Amazon SNS topic or an existing
Amazon SNS topic that you own by specifying the policy. If the
configuration is for an existing Amazon SNS topic and you do not
specify the Amazon SNS policy, then the access preview uses the
existing Amazon SNS policy for the topic. If the access preview is for
a new resource and you do not specify the policy, then the access
preview assumes an Amazon SNS topic without a policy. To propose
deletion of an existing Amazon SNS topic policy, you can specify an
empty string for the Amazon SNS policy. For more information, see Topic
(https://docs.aws.amazon.com/sns/latest/api/API_Topic.html).

=head1 ATTRIBUTES


=head2 TopicPolicy => Str

The JSON policy text that defines who can access an Amazon SNS topic.
For more information, see Example cases for Amazon SNS access control
(https://docs.aws.amazon.com/sns/latest/dg/sns-access-policy-use-cases.html)
in the I<Amazon SNS Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

