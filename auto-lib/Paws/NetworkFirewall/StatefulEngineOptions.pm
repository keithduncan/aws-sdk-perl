# Generated by default/object.tt
package Paws::NetworkFirewall::StatefulEngineOptions;
  use Moose;
  has FlowTimeouts => (is => 'ro', isa => 'Paws::NetworkFirewall::FlowTimeouts');
  has RuleOrder => (is => 'ro', isa => 'Str');
  has StreamExceptionPolicy => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::StatefulEngineOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkFirewall::StatefulEngineOptions object:

  $service_obj->Method(Att1 => { FlowTimeouts => $value, ..., StreamExceptionPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkFirewall::StatefulEngineOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->FlowTimeouts

=head1 DESCRIPTION

Configuration settings for the handling of the stateful rule groups in
a firewall policy.

=head1 ATTRIBUTES


=head2 FlowTimeouts => L<Paws::NetworkFirewall::FlowTimeouts>

Configures the amount of time that can pass without any traffic sent
through the firewall before the firewall determines that the connection
is idle.


=head2 RuleOrder => Str

Indicates how to manage the order of stateful rule evaluation for the
policy. C<STRICT_ORDER> is the default and recommended option. With
C<STRICT_ORDER>, provide your rules in the order that you want them to
be evaluated. You can then choose one or more default actions for
packets that don't match any rules. Choose C<STRICT_ORDER> to have the
stateful rules engine determine the evaluation order of your rules. The
default action for this rule order is C<PASS>, followed by C<DROP>,
C<REJECT>, and C<ALERT> actions. Stateful rules are provided to the
rule engine as Suricata compatible strings, and Suricata evaluates them
based on your settings. For more information, see Evaluation order for
stateful rules
(https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-rule-evaluation-order.html)
in the I<Network Firewall Developer Guide>.


=head2 StreamExceptionPolicy => Str

Configures how Network Firewall processes traffic when a network
connection breaks midstream. Network connections can break due to
disruptions in external networks or within the firewall itself.

=over

=item *

C<DROP> - Network Firewall fails closed and drops all subsequent
traffic going to the firewall. This is the default behavior.

=item *

C<CONTINUE> - Network Firewall continues to apply rules to the
subsequent traffic without context from traffic before the break. This
impacts the behavior of rules that depend on this context. For example,
if you have a stateful rule to C<drop http> traffic, Network Firewall
won't match the traffic for this rule because the service won't have
the context from session initialization defining the application layer
protocol as HTTP. However, this behavior is rule dependentE<mdash>a
TCP-layer rule using a C<flow:stateless> rule would still match, as
would the C<aws:drop_strict> default action.

=item *

C<REJECT> - Network Firewall fails closed and drops all subsequent
traffic going to the firewall. Network Firewall also sends a TCP reject
packet back to your client so that the client can immediately establish
a new session. Network Firewall will have context about the new session
and will apply rules to the subsequent traffic.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

