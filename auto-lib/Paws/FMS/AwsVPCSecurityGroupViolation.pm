# Generated by default/object.tt
package Paws::FMS::AwsVPCSecurityGroupViolation;
  use Moose;
  has PartialMatches => (is => 'ro', isa => 'ArrayRef[Paws::FMS::PartialMatch]');
  has PossibleSecurityGroupRemediationActions => (is => 'ro', isa => 'ArrayRef[Paws::FMS::SecurityGroupRemediationAction]');
  has ViolationTarget => (is => 'ro', isa => 'Str');
  has ViolationTargetDescription => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::AwsVPCSecurityGroupViolation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::AwsVPCSecurityGroupViolation object:

  $service_obj->Method(Att1 => { PartialMatches => $value, ..., ViolationTargetDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::AwsVPCSecurityGroupViolation object:

  $result = $service_obj->Method(...);
  $result->Att1->PartialMatches

=head1 DESCRIPTION

Violation detail for the rule violation in a security group when
compared to the primary security group of the Firewall Manager policy.

=head1 ATTRIBUTES


=head2 PartialMatches => ArrayRef[L<Paws::FMS::PartialMatch>]

List of rules specified in the security group of the Firewall Manager
policy that partially match the C<ViolationTarget> rule.


=head2 PossibleSecurityGroupRemediationActions => ArrayRef[L<Paws::FMS::SecurityGroupRemediationAction>]

Remediation options for the rule specified in the C<ViolationTarget>.


=head2 ViolationTarget => Str

The security group rule that is being evaluated.


=head2 ViolationTargetDescription => Str

A description of the security group that violates the policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

