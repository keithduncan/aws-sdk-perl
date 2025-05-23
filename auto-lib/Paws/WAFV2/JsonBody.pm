# Generated by default/object.tt
package Paws::WAFV2::JsonBody;
  use Moose;
  has InvalidFallbackBehavior => (is => 'ro', isa => 'Str');
  has MatchPattern => (is => 'ro', isa => 'Paws::WAFV2::JsonMatchPattern', required => 1);
  has MatchScope => (is => 'ro', isa => 'Str', required => 1);
  has OversizeHandling => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::JsonBody

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFV2::JsonBody object:

  $service_obj->Method(Att1 => { InvalidFallbackBehavior => $value, ..., OversizeHandling => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFV2::JsonBody object:

  $result = $service_obj->Method(...);
  $result->Att1->InvalidFallbackBehavior

=head1 DESCRIPTION

Inspect the body of the web request as JSON. The body immediately
follows the request headers.

This is used to indicate the web request component to inspect, in the
FieldToMatch specification.

Use the specifications in this object to indicate which parts of the
JSON body to inspect using the rule's inspection criteria. WAF inspects
only the parts of the JSON that result from the matches that you
indicate.

Example JSON: C<"JsonBody": { "MatchPattern": { "All": {} },
"MatchScope": "ALL" }>

For additional information about this request component option, see
JSON body
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-fields-list.html#waf-rule-statement-request-component-json-body)
in the I<WAF Developer Guide>.

=head1 ATTRIBUTES


=head2 InvalidFallbackBehavior => Str

What WAF should do if it fails to completely parse the JSON body. The
options are the following:

=over

=item *

C<EVALUATE_AS_STRING> - Inspect the body as plain text. WAF applies the
text transformations and inspection criteria that you defined for the
JSON inspection to the body text string.

=item *

C<MATCH> - Treat the web request as matching the rule statement. WAF
applies the rule action to the request.

=item *

C<NO_MATCH> - Treat the web request as not matching the rule statement.

=back

If you don't provide this setting, WAF parses and evaluates the content
only up to the first parsing failure that it encounters.

WAF parsing doesn't fully validate the input JSON string, so parsing
can succeed even for invalid JSON. When parsing succeeds, WAF doesn't
apply the fallback behavior. For more information, see JSON body
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-fields-list.html#waf-rule-statement-request-component-json-body)
in the I<WAF Developer Guide>.


=head2 B<REQUIRED> MatchPattern => L<Paws::WAFV2::JsonMatchPattern>

The patterns to look for in the JSON body. WAF inspects the results of
these pattern matches against the rule inspection criteria.


=head2 B<REQUIRED> MatchScope => Str

The parts of the JSON to match against using the C<MatchPattern>. If
you specify C<ALL>, WAF matches against keys and values.

C<All> does not require a match to be found in the keys and a match to
be found in the values. It requires a match to be found in the keys or
the values or both. To require a match in the keys and in the values,
use a logical C<AND> statement to combine two match rules, one that
inspects the keys and another that inspects the values.


=head2 OversizeHandling => Str

What WAF should do if the body is larger than WAF can inspect.

WAF does not support inspecting the entire contents of the web request
body if the body exceeds the limit for the resource type. When a web
request body is larger than the limit, the underlying host service only
forwards the contents that are within the limit to WAF for inspection.

=over

=item *

For Application Load Balancer and AppSync, the limit is fixed at 8 KB
(8,192 bytes).

=item *

For CloudFront, API Gateway, Amazon Cognito, App Runner, and Verified
Access, the default limit is 16 KB (16,384 bytes), and you can increase
the limit for each resource type in the web ACL C<AssociationConfig>,
for additional processing fees.

=item *

For Amplify, use the CloudFront limit.

=back

The options for oversize handling are the following:

=over

=item *

C<CONTINUE> - Inspect the available body contents normally, according
to the rule inspection criteria.

=item *

C<MATCH> - Treat the web request as matching the rule statement. WAF
applies the rule action to the request.

=item *

C<NO_MATCH> - Treat the web request as not matching the rule statement.

=back

You can combine the C<MATCH> or C<NO_MATCH> settings for oversize
handling with your rule and web ACL action settings, so that you block
any request whose body is over the limit.

Default: C<CONTINUE>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

