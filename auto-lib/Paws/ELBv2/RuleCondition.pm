# Generated by default/object.tt
package Paws::ELBv2::RuleCondition;
  use Moose;
  has Field => (is => 'ro', isa => 'Str');
  has HostHeaderConfig => (is => 'ro', isa => 'Paws::ELBv2::HostHeaderConditionConfig');
  has HttpHeaderConfig => (is => 'ro', isa => 'Paws::ELBv2::HttpHeaderConditionConfig');
  has HttpRequestMethodConfig => (is => 'ro', isa => 'Paws::ELBv2::HttpRequestMethodConditionConfig');
  has PathPatternConfig => (is => 'ro', isa => 'Paws::ELBv2::PathPatternConditionConfig');
  has QueryStringConfig => (is => 'ro', isa => 'Paws::ELBv2::QueryStringConditionConfig');
  has SourceIpConfig => (is => 'ro', isa => 'Paws::ELBv2::SourceIpConditionConfig');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::RuleCondition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::RuleCondition object:

  $service_obj->Method(Att1 => { Field => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::RuleCondition object:

  $result = $service_obj->Method(...);
  $result->Att1->Field

=head1 DESCRIPTION

Information about a condition for a rule.

Each rule can optionally include up to one of each of the following
conditions: C<http-request-method>, C<host-header>, C<path-pattern>,
and C<source-ip>. Each rule can also optionally include one or more of
each of the following conditions: C<http-header> and C<query-string>.
Note that the value for a condition can't be empty.

For more information, see Quotas for your Application Load Balancers
(https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html).

=head1 ATTRIBUTES


=head2 Field => Str

The field in the HTTP request. The following are the possible values:

=over

=item *

C<http-header>

=item *

C<http-request-method>

=item *

C<host-header>

=item *

C<path-pattern>

=item *

C<query-string>

=item *

C<source-ip>

=back



=head2 HostHeaderConfig => L<Paws::ELBv2::HostHeaderConditionConfig>

Information for a host header condition. Specify only when C<Field> is
C<host-header>.


=head2 HttpHeaderConfig => L<Paws::ELBv2::HttpHeaderConditionConfig>

Information for an HTTP header condition. Specify only when C<Field> is
C<http-header>.


=head2 HttpRequestMethodConfig => L<Paws::ELBv2::HttpRequestMethodConditionConfig>

Information for an HTTP method condition. Specify only when C<Field> is
C<http-request-method>.


=head2 PathPatternConfig => L<Paws::ELBv2::PathPatternConditionConfig>

Information for a path pattern condition. Specify only when C<Field> is
C<path-pattern>.


=head2 QueryStringConfig => L<Paws::ELBv2::QueryStringConditionConfig>

Information for a query string condition. Specify only when C<Field> is
C<query-string>.


=head2 SourceIpConfig => L<Paws::ELBv2::SourceIpConditionConfig>

Information for a source IP condition. Specify only when C<Field> is
C<source-ip>.


=head2 Values => ArrayRef[Str|Undef]

The condition value. Specify only when C<Field> is C<host-header> or
C<path-pattern>. Alternatively, to specify multiple host names or
multiple path patterns, use C<HostHeaderConfig> or
C<PathPatternConfig>.

If C<Field> is C<host-header> and you are not using
C<HostHeaderConfig>, you can specify a single host name (for example,
my.example.com) in C<Values>. A host name is case insensitive, can be
up to 128 characters in length, and can contain any of the following
characters.

=over

=item *

A-Z, a-z, 0-9

=item *

- .

=item *

* (matches 0 or more characters)

=item *

? (matches exactly 1 character)

=back

If C<Field> is C<path-pattern> and you are not using
C<PathPatternConfig>, you can specify a single path pattern (for
example, /img/*) in C<Values>. A path pattern is case-sensitive, can be
up to 128 characters in length, and can contain any of the following
characters.

=over

=item *

A-Z, a-z, 0-9

=item *

_ - . $ / ~ " ' @ : +

=item *

& (using &)

=item *

* (matches 0 or more characters)

=item *

? (matches exactly 1 character)

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

