# Generated by default/object.tt
package Paws::Connect::AssignSlaActionDefinition;
  use Moose;
  has CaseSlaConfiguration => (is => 'ro', isa => 'Paws::Connect::CaseSlaConfiguration');
  has SlaAssignmentType => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::AssignSlaActionDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::AssignSlaActionDefinition object:

  $service_obj->Method(Att1 => { CaseSlaConfiguration => $value, ..., SlaAssignmentType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::AssignSlaActionDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->CaseSlaConfiguration

=head1 DESCRIPTION

The AssignSla action definition.

=head1 ATTRIBUTES


=head2 CaseSlaConfiguration => L<Paws::Connect::CaseSlaConfiguration>

The SLA configuration for Case SLA Assignment.


=head2 B<REQUIRED> SlaAssignmentType => Str

Type of SLA assignment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

