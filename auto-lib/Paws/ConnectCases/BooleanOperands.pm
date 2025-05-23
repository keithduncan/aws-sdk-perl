# Generated by default/object.tt
package Paws::ConnectCases::BooleanOperands;
  use Moose;
  has OperandOne => (is => 'ro', isa => 'Paws::ConnectCases::OperandOne', request_name => 'operandOne', traits => ['NameInRequest'], required => 1);
  has OperandTwo => (is => 'ro', isa => 'Paws::ConnectCases::OperandTwo', request_name => 'operandTwo', traits => ['NameInRequest'], required => 1);
  has Result => (is => 'ro', isa => 'Bool', request_name => 'result', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::BooleanOperands

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectCases::BooleanOperands object:

  $service_obj->Method(Att1 => { OperandOne => $value, ..., Result => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectCases::BooleanOperands object:

  $result = $service_obj->Method(...);
  $result->Att1->OperandOne

=head1 DESCRIPTION

Boolean operands for a condition. In the Amazon Connect admin website,
case rules are known as I<case field conditions>. For more information
about case field conditions, see Add case field conditions to a case
template
(https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> OperandOne => L<Paws::ConnectCases::OperandOne>

Represents the left hand operand in the condition.


=head2 B<REQUIRED> OperandTwo => L<Paws::ConnectCases::OperandTwo>

Represents the right hand operand in the condition.


=head2 B<REQUIRED> Result => Bool

The value of the outer rule if the condition evaluates to true.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

