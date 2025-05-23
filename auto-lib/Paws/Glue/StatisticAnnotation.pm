# Generated by default/object.tt
package Paws::Glue::StatisticAnnotation;
  use Moose;
  has InclusionAnnotation => (is => 'ro', isa => 'Paws::Glue::TimestampedInclusionAnnotation');
  has ProfileId => (is => 'ro', isa => 'Str');
  has StatisticId => (is => 'ro', isa => 'Str');
  has StatisticRecordedOn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StatisticAnnotation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::StatisticAnnotation object:

  $service_obj->Method(Att1 => { InclusionAnnotation => $value, ..., StatisticRecordedOn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::StatisticAnnotation object:

  $result = $service_obj->Method(...);
  $result->Att1->InclusionAnnotation

=head1 DESCRIPTION

A Statistic Annotation.

=head1 ATTRIBUTES


=head2 InclusionAnnotation => L<Paws::Glue::TimestampedInclusionAnnotation>

The inclusion annotation applied to the statistic.


=head2 ProfileId => Str

The Profile ID.


=head2 StatisticId => Str

The Statistic ID.


=head2 StatisticRecordedOn => Str

The timestamp when the annotated statistic was recorded.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

