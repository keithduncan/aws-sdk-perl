# Generated by default/object.tt
package Paws::Backup::Conditions;
  use Moose;
  has StringEquals => (is => 'ro', isa => 'ArrayRef[Paws::Backup::ConditionParameter]');
  has StringLike => (is => 'ro', isa => 'ArrayRef[Paws::Backup::ConditionParameter]');
  has StringNotEquals => (is => 'ro', isa => 'ArrayRef[Paws::Backup::ConditionParameter]');
  has StringNotLike => (is => 'ro', isa => 'ArrayRef[Paws::Backup::ConditionParameter]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::Conditions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::Conditions object:

  $service_obj->Method(Att1 => { StringEquals => $value, ..., StringNotLike => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::Conditions object:

  $result = $service_obj->Method(...);
  $result->Att1->StringEquals

=head1 DESCRIPTION

Contains information about which resources to include or exclude from a
backup plan using their tags. Conditions are case sensitive.

=head1 ATTRIBUTES


=head2 StringEquals => ArrayRef[L<Paws::Backup::ConditionParameter>]

Filters the values of your tagged resources for only those resources
that you tagged with the same value. Also called "exact matching."


=head2 StringLike => ArrayRef[L<Paws::Backup::ConditionParameter>]

Filters the values of your tagged resources for matching tag values
with the use of a wildcard character (*) anywhere in the string. For
example, "prod*" or "*rod*" matches the tag value "production".


=head2 StringNotEquals => ArrayRef[L<Paws::Backup::ConditionParameter>]

Filters the values of your tagged resources for only those resources
that you tagged that do not have the same value. Also called "negated
matching."


=head2 StringNotLike => ArrayRef[L<Paws::Backup::ConditionParameter>]

Filters the values of your tagged resources for non-matching tag values
with the use of a wildcard character (*) anywhere in the string.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

