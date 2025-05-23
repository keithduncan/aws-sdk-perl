# Generated by default/object.tt
package Paws::ControlTower::EnabledBaselineDriftStatusSummary;
  use Moose;
  has Types => (is => 'ro', isa => 'Paws::ControlTower::EnabledBaselineDriftTypes', request_name => 'types', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::EnabledBaselineDriftStatusSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ControlTower::EnabledBaselineDriftStatusSummary object:

  $service_obj->Method(Att1 => { Types => $value, ..., Types => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ControlTower::EnabledBaselineDriftStatusSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Types

=head1 DESCRIPTION

The drift summary of the enabled baseline. Amazon Web Services Control
Tower reports inheritance drift when an enabled baseline configuration
of a member account is different than the configuration that applies to
the OU. Amazon Web Services Control Tower reports this type of drift
for a parent or child enabled baseline. One way to repair this drift by
resetting the parent enabled baseline, on the OU.

For example, you may see this type of drift if you move accounts
between OUs, but the accounts are not yet (re-)enrolled.

=head1 ATTRIBUTES


=head2 Types => L<Paws::ControlTower::EnabledBaselineDriftTypes>

The types of drift that can be detected for an enabled baseline. Amazon
Web Services Control Tower detects inheritance drift on enabled
baselines that apply at the OU level.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

