# Generated by default/object.tt
package Paws::WAFV2::RateLimitLabelNamespace;
  use Moose;
  has Namespace => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::RateLimitLabelNamespace

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFV2::RateLimitLabelNamespace object:

  $service_obj->Method(Att1 => { Namespace => $value, ..., Namespace => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFV2::RateLimitLabelNamespace object:

  $result = $service_obj->Method(...);
  $result->Att1->Namespace

=head1 DESCRIPTION

Specifies a label namespace to use as an aggregate key for a rate-based
rule. Each distinct fully qualified label name that has the specified
label namespace contributes to the aggregation instance. If you use
just one label namespace as your custom key, then each label name fully
defines an aggregation instance.

This uses only labels that have been added to the request by rules that
are evaluated before this rate-based rule in the web ACL.

For information about label namespaces and names, see Label syntax and
naming requirements
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-label-requirements.html)
in the I<WAF Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Namespace => Str

The namespace to use for aggregation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

