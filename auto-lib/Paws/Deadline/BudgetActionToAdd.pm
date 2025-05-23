# Generated by default/object.tt
package Paws::Deadline::BudgetActionToAdd;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has ThresholdPercentage => (is => 'ro', isa => 'Num', request_name => 'thresholdPercentage', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::BudgetActionToAdd

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Deadline::BudgetActionToAdd object:

  $service_obj->Method(Att1 => { Description => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Deadline::BudgetActionToAdd object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

The budget action to add.

=head1 ATTRIBUTES


=head2 Description => Str

A description for the budget action to add.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.


=head2 B<REQUIRED> ThresholdPercentage => Num

The percentage threshold for the budget action to add.


=head2 B<REQUIRED> Type => Str

The type of budget action to add.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

