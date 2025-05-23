# Generated by default/object.tt
package Paws::SecurityHub::AwsWafRateBasedRuleDetails;
  use Moose;
  has MatchPredicates => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsWafRateBasedRuleMatchPredicate]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RateKey => (is => 'ro', isa => 'Str');
  has RateLimit => (is => 'ro', isa => 'Int');
  has RuleId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsWafRateBasedRuleDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsWafRateBasedRuleDetails object:

  $service_obj->Method(Att1 => { MatchPredicates => $value, ..., RuleId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsWafRateBasedRuleDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->MatchPredicates

=head1 DESCRIPTION

Details about a rate-based rule for global resources. A rate-based rule
provides settings to indicate when to allow, block, or count a request.
Rate-based rules include the number of requests that arrive over a
specified period of time.

=head1 ATTRIBUTES


=head2 MatchPredicates => ArrayRef[L<Paws::SecurityHub::AwsWafRateBasedRuleMatchPredicate>]

The predicates to include in the rate-based rule.


=head2 MetricName => Str

The name of the metrics for the rate-based rule.


=head2 Name => Str

The name of the rate-based rule.


=head2 RateKey => Str

The field that WAF uses to determine whether requests are likely
arriving from single source and are subject to rate monitoring.


=head2 RateLimit => Int

The maximum number of requests that have an identical value for the
field specified in C<RateKey> that are allowed within a five-minute
period. If the number of requests exceeds C<RateLimit> and the other
predicates specified in the rule are met, WAF triggers the action for
the rule.


=head2 RuleId => Str

The unique identifier for the rate-based rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

