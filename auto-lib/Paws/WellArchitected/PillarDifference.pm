# Generated by default/object.tt
package Paws::WellArchitected::PillarDifference;
  use Moose;
  has DifferenceStatus => (is => 'ro', isa => 'Str');
  has PillarId => (is => 'ro', isa => 'Str');
  has PillarName => (is => 'ro', isa => 'Str');
  has QuestionDifferences => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::QuestionDifference]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::PillarDifference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WellArchitected::PillarDifference object:

  $service_obj->Method(Att1 => { DifferenceStatus => $value, ..., QuestionDifferences => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WellArchitected::PillarDifference object:

  $result = $service_obj->Method(...);
  $result->Att1->DifferenceStatus

=head1 DESCRIPTION

A pillar difference return object.

=head1 ATTRIBUTES


=head2 DifferenceStatus => Str

Indicates the type of change to the pillar.


=head2 PillarId => Str




=head2 PillarName => Str




=head2 QuestionDifferences => ArrayRef[L<Paws::WellArchitected::QuestionDifference>]

List of question differences.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

