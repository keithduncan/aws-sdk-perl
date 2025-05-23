# Generated by default/object.tt
package Paws::Route53RecoveryControlConfig::GatingRule;
  use Moose;
  has ControlPanelArn => (is => 'ro', isa => 'Str', required => 1);
  has GatingControls => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Owner => (is => 'ro', isa => 'Str');
  has RuleConfig => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::RuleConfig', required => 1);
  has SafetyRuleArn => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has TargetControls => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has WaitPeriodMs => (is => 'ro', isa => 'Int', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::GatingRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53RecoveryControlConfig::GatingRule object:

  $service_obj->Method(Att1 => { ControlPanelArn => $value, ..., WaitPeriodMs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53RecoveryControlConfig::GatingRule object:

  $result = $service_obj->Method(...);
  $result->Att1->ControlPanelArn

=head1 DESCRIPTION

A gating rule verifies that a gating routing control or set of gating
routing controls, evaluates as true, based on a rule configuration that
you specify, which allows a set of routing control state changes to
complete.

For example, if you specify one gating routing control and you set the
Type in the rule configuration to OR, that indicates that you must set
the gating routing control to On for the rule to evaluate as true; that
is, for the gating control "switch" to be "On". When you do that, then
you can update the routing control states for the target routing
controls that you specify in the gating rule.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ControlPanelArn => Str

The Amazon Resource Name (ARN) of the control panel.


=head2 B<REQUIRED> GatingControls => ArrayRef[Str|Undef]

An array of gating routing control Amazon Resource Names (ARNs). For a
simple "on/off" switch, specify the ARN for one routing control. The
gating routing controls are evaluated by the rule configuration that
you specify to determine if the target routing control states can be
changed.


=head2 B<REQUIRED> Name => Str

The name for the gating rule. You can use any non-white space character
in the name.


=head2 Owner => Str

The Amazon Web Services account ID of the gating rule owner.


=head2 B<REQUIRED> RuleConfig => L<Paws::Route53RecoveryControlConfig::RuleConfig>

The criteria that you set for gating routing controls that designate
how many of the routing control states must be ON to allow you to
update target routing control states.


=head2 B<REQUIRED> SafetyRuleArn => Str

The Amazon Resource Name (ARN) of the gating rule.


=head2 B<REQUIRED> Status => Str

The deployment status of a gating rule. Status can be one of the
following: PENDING, DEPLOYED, PENDING_DELETION.


=head2 B<REQUIRED> TargetControls => ArrayRef[Str|Undef]

An array of target routing control Amazon Resource Names (ARNs) for
which the states can only be updated if the rule configuration that you
specify evaluates to true for the gating routing control. As a simple
example, if you have a single gating control, it acts as an overall
"on/off" switch for a set of target routing controls. You can use this
to manually override automated failover, for example.


=head2 B<REQUIRED> WaitPeriodMs => Int

An evaluation period, in milliseconds (ms), during which any request
against the target routing controls will fail. This helps prevent
"flapping" of state. The wait period is 5000 ms by default, but you can
choose a custom value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53RecoveryControlConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

