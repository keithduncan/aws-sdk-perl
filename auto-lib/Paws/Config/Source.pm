# Generated by default/object.tt
package Paws::Config::Source;
  use Moose;
  has CustomPolicyDetails => (is => 'ro', isa => 'Paws::Config::CustomPolicyDetails');
  has Owner => (is => 'ro', isa => 'Str', required => 1);
  has SourceDetails => (is => 'ro', isa => 'ArrayRef[Paws::Config::SourceDetail]');
  has SourceIdentifier => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::Source

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::Source object:

  $service_obj->Method(Att1 => { CustomPolicyDetails => $value, ..., SourceIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::Source object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomPolicyDetails

=head1 DESCRIPTION

Provides the CustomPolicyDetails, the rule owner (C<Amazon Web
Services> for managed rules, C<CUSTOM_POLICY> for Custom Policy rules,
and C<CUSTOM_LAMBDA> for Custom Lambda rules), the rule identifier, and
the events that cause the evaluation of your Amazon Web Services
resources.

=head1 ATTRIBUTES


=head2 CustomPolicyDetails => L<Paws::Config::CustomPolicyDetails>

Provides the runtime system, policy definition, and whether debug
logging is enabled. Required when owner is set to C<CUSTOM_POLICY>.


=head2 B<REQUIRED> Owner => Str

Indicates whether Amazon Web Services or the customer owns and manages
the Config rule.

Config Managed Rules are predefined rules owned by Amazon Web Services.
For more information, see Config Managed Rules
(https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html)
in the I<Config developer guide>.

Config Custom Rules are rules that you can develop either with Guard
(C<CUSTOM_POLICY>) or Lambda (C<CUSTOM_LAMBDA>). For more information,
see Config Custom Rules
(https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html)
in the I<Config developer guide>.


=head2 SourceDetails => ArrayRef[L<Paws::Config::SourceDetail>]

Provides the source and the message types that cause Config to evaluate
your Amazon Web Services resources against a rule. It also provides the
frequency with which you want Config to run evaluations for the rule if
the trigger type is periodic.

If the owner is set to C<CUSTOM_POLICY>, the only acceptable values for
the Config rule trigger message type are
C<ConfigurationItemChangeNotification> and
C<OversizedConfigurationItemChangeNotification>.


=head2 SourceIdentifier => Str

For Config Managed rules, a predefined identifier from a list. For
example, C<IAM_PASSWORD_POLICY> is a managed rule. To reference a
managed rule, see List of Config Managed Rules
(https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).

For Config Custom Lambda rules, the identifier is the Amazon Resource
Name (ARN) of the rule's Lambda function, such as
C<arn:aws:lambda:us-east-2:123456789012:function:custom_rule_name>.

For Config Custom Policy rules, this field will be ignored.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

