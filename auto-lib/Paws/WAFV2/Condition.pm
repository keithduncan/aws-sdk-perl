# Generated by default/object.tt
package Paws::WAFV2::Condition;
  use Moose;
  has ActionCondition => (is => 'ro', isa => 'Paws::WAFV2::ActionCondition');
  has LabelNameCondition => (is => 'ro', isa => 'Paws::WAFV2::LabelNameCondition');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::Condition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFV2::Condition object:

  $service_obj->Method(Att1 => { ActionCondition => $value, ..., LabelNameCondition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFV2::Condition object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionCondition

=head1 DESCRIPTION

A single match condition for a Filter.

=head1 ATTRIBUTES


=head2 ActionCondition => L<Paws::WAFV2::ActionCondition>

A single action condition. This is the action setting that a log record
must contain in order to meet the condition.


=head2 LabelNameCondition => L<Paws::WAFV2::LabelNameCondition>

A single label name condition. This is the fully qualified label name
that a log record must contain in order to meet the condition. Fully
qualified labels have a prefix, optional namespaces, and label name.
The prefix identifies the rule group or web ACL context of the rule
that added the label.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

