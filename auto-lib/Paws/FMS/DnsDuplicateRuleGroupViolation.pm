# Generated by default/object.tt
package Paws::FMS::DnsDuplicateRuleGroupViolation;
  use Moose;
  has ViolationTarget => (is => 'ro', isa => 'Str');
  has ViolationTargetDescription => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::DnsDuplicateRuleGroupViolation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::DnsDuplicateRuleGroupViolation object:

  $service_obj->Method(Att1 => { ViolationTarget => $value, ..., ViolationTargetDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::DnsDuplicateRuleGroupViolation object:

  $result = $service_obj->Method(...);
  $result->Att1->ViolationTarget

=head1 DESCRIPTION

A DNS Firewall rule group that Firewall Manager tried to associate with
a VPC is already associated with the VPC and can't be associated again.

=head1 ATTRIBUTES


=head2 ViolationTarget => Str

Information about the VPC ID.


=head2 ViolationTargetDescription => Str

A description of the violation that specifies the rule group and VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

