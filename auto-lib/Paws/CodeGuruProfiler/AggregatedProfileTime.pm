# Generated by default/object.tt
package Paws::CodeGuruProfiler::AggregatedProfileTime;
  use Moose;
  has Period => (is => 'ro', isa => 'Str', request_name => 'period', traits => ['NameInRequest']);
  has Start => (is => 'ro', isa => 'Str', request_name => 'start', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::AggregatedProfileTime

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeGuruProfiler::AggregatedProfileTime object:

  $service_obj->Method(Att1 => { Period => $value, ..., Start => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeGuruProfiler::AggregatedProfileTime object:

  $result = $service_obj->Method(...);
  $result->Att1->Period

=head1 DESCRIPTION

Specifies the aggregation period and aggregation start time for an
aggregated profile. An aggregated profile is used to collect posted
agent profiles during an aggregation period. There are three possible
aggregation periods (1 day, 1 hour, or 5 minutes).

=head1 ATTRIBUTES


=head2 Period => Str

The aggregation period. This indicates the period during which an
aggregation profile collects posted agent profiles for a profiling
group. Use one of three valid durations that are specified using the
ISO 8601 format.

=over

=item *

C<P1D> E<mdash> 1 day

=item *

C<PT1H> E<mdash> 1 hour

=item *

C<PT5M> E<mdash> 5 minutes

=back



=head2 Start => Str

The time that aggregation of posted agent profiles for a profiling
group starts. The aggregation profile contains profiles posted by the
agent starting at this time for an aggregation period specified by the
C<period> property of the C<AggregatedProfileTime> object.

Specify C<start> using the ISO 8601 format. For example,
2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
1:15:02 PM UTC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

