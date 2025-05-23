# Generated by default/object.tt
package Paws::Route53RecoveryControlConfig::NewAssertionRule;
  use Moose;
  has AssertedControls => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ControlPanelArn => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RuleConfig => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::RuleConfig', required => 1);
  has WaitPeriodMs => (is => 'ro', isa => 'Int', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::NewAssertionRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53RecoveryControlConfig::NewAssertionRule object:

  $service_obj->Method(Att1 => { AssertedControls => $value, ..., WaitPeriodMs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53RecoveryControlConfig::NewAssertionRule object:

  $result = $service_obj->Method(...);
  $result->Att1->AssertedControls

=head1 DESCRIPTION

A new assertion rule for a control panel.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssertedControls => ArrayRef[Str|Undef]

The routing controls that are part of transactions that are evaluated
to determine if a request to change a routing control state is allowed.
For example, you might include three routing controls, one for each of
three Amazon Web Services Regions.


=head2 B<REQUIRED> ControlPanelArn => Str

The Amazon Resource Name (ARN) for the control panel.


=head2 B<REQUIRED> Name => Str

The name of the assertion rule. You can use any non-white space
character in the name.


=head2 B<REQUIRED> RuleConfig => L<Paws::Route53RecoveryControlConfig::RuleConfig>

The criteria that you set for specific assertion controls (routing
controls) that designate how many control states must be ON as the
result of a transaction. For example, if you have three assertion
controls, you might specify ATLEAST 2 for your rule configuration. This
means that at least two assertion controls must be ON, so that at least
two Amazon Web Services Regions have traffic flowing to them.


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

