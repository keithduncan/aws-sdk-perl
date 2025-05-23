
package Paws::Route53Resolver::CreateResolverRule;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ResolverEndpointId => (is => 'ro', isa => 'Str');
  has RuleType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::Tag]');
  has TargetIps => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::TargetAddress]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResolverRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::CreateResolverRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::CreateResolverRule - Arguments for method CreateResolverRule on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResolverRule on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method CreateResolverRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResolverRule.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $CreateResolverRuleResponse = $route53resolver->CreateResolverRule(
      CreatorRequestId   => 'MyCreatorRequestId',
      RuleType           => 'FORWARD',
      DomainName         => 'MyDomainName',         # OPTIONAL
      Name               => 'MyName',               # OPTIONAL
      ResolverEndpointId => 'MyResourceId',         # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TargetIps => [
        {
          Ip       => 'MyIp',      # min: 7, max: 36; OPTIONAL
          Ipv6     => 'MyIpv6',    # min: 7, max: 39; OPTIONAL
          Port     => 1,           # max: 65535; OPTIONAL
          Protocol => 'DoH',       # values: DoH, Do53, DoH-FIPS; OPTIONAL
          ServerNameIndication => 'MyServerNameIndication', # max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ResolverRule = $CreateResolverRuleResponse->ResolverRule;

    # Returns a L<Paws::Route53Resolver::CreateResolverRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/CreateResolverRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatorRequestId => Str

A unique string that identifies the request and that allows failed
requests to be retried without the risk of running the operation twice.
C<CreatorRequestId> can be any unique string, for example, a date/time
stamp.



=head2 DomainName => Str

DNS queries for this domain name are forwarded to the IP addresses that
you specify in C<TargetIps>. If a query matches multiple Resolver rules
(example.com and www.example.com), outbound DNS queries are routed
using the Resolver rule that contains the most specific domain name
(www.example.com).



=head2 Name => Str

A friendly name that lets you easily find a rule in the Resolver
dashboard in the Route 53 console.



=head2 ResolverEndpointId => Str

The ID of the outbound Resolver endpoint that you want to use to route
DNS queries to the IP addresses that you specify in C<TargetIps>.



=head2 B<REQUIRED> RuleType => Str

When you want to forward DNS queries for specified domain name to
resolvers on your network, specify C<FORWARD>.

When you have a forwarding rule to forward DNS queries for a domain to
your network and you want Resolver to process queries for a subdomain
of that domain, specify C<SYSTEM>.

For example, to forward DNS queries for example.com to resolvers on
your network, you create a rule and specify C<FORWARD> for C<RuleType>.
To then have Resolver process queries for apex.example.com, you create
a rule and specify C<SYSTEM> for C<RuleType>.

Currently, only Resolver can create rules that have a value of
C<RECURSIVE> for C<RuleType>.

Valid values are: C<"FORWARD">, C<"SYSTEM">, C<"RECURSIVE">

=head2 Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]

A list of the tag keys and values that you want to associate with the
endpoint.



=head2 TargetIps => ArrayRef[L<Paws::Route53Resolver::TargetAddress>]

The IPs that you want Resolver to forward DNS queries to. You can
specify either Ipv4 or Ipv6 addresses but not both in the same rule.
Separate IP addresses with a space.

C<TargetIps> is available only when the value of C<Rule type> is
C<FORWARD>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResolverRule in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

