# Generated by default/object.tt
package Paws::SecurityHub::RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts;
  use Moose;
  has FromPort => (is => 'ro', isa => 'Int');
  has ToPort => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts object:

  $service_obj->Method(Att1 => { FromPort => $value, ..., ToPort => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts object:

  $result = $service_obj->Method(...);
  $result->Att1->FromPort

=head1 DESCRIPTION

A port range to specify the destination ports to inspect for.

=head1 ATTRIBUTES


=head2 FromPort => Int

The starting port value for the port range.


=head2 ToPort => Int

The ending port value for the port range.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

