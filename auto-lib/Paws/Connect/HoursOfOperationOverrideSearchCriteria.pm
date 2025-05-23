# Generated by default/object.tt
package Paws::Connect::HoursOfOperationOverrideSearchCriteria;
  use Moose;
  has AndConditions => (is => 'ro', isa => 'ArrayRef[Paws::Connect::HoursOfOperationOverrideSearchCriteria]');
  has DateCondition => (is => 'ro', isa => 'Paws::Connect::DateCondition');
  has OrConditions => (is => 'ro', isa => 'ArrayRef[Paws::Connect::HoursOfOperationOverrideSearchCriteria]');
  has StringCondition => (is => 'ro', isa => 'Paws::Connect::StringCondition');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::HoursOfOperationOverrideSearchCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::HoursOfOperationOverrideSearchCriteria object:

  $service_obj->Method(Att1 => { AndConditions => $value, ..., StringCondition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::HoursOfOperationOverrideSearchCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->AndConditions

=head1 DESCRIPTION

The search criteria to be used to return hours of operations overrides.

=head1 ATTRIBUTES


=head2 AndConditions => ArrayRef[L<Paws::Connect::HoursOfOperationOverrideSearchCriteria>]

A list of conditions which would be applied together with an AND
condition.


=head2 DateCondition => L<Paws::Connect::DateCondition>

A leaf node condition which can be used to specify a date condition.


=head2 OrConditions => ArrayRef[L<Paws::Connect::HoursOfOperationOverrideSearchCriteria>]

A list of conditions which would be applied together with an OR
condition.


=head2 StringCondition => L<Paws::Connect::StringCondition>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

