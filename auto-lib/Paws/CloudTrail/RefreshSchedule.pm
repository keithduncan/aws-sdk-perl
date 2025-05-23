# Generated by default/object.tt
package Paws::CloudTrail::RefreshSchedule;
  use Moose;
  has Frequency => (is => 'ro', isa => 'Paws::CloudTrail::RefreshScheduleFrequency');
  has Status => (is => 'ro', isa => 'Str');
  has TimeOfDay => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::RefreshSchedule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::RefreshSchedule object:

  $service_obj->Method(Att1 => { Frequency => $value, ..., TimeOfDay => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::RefreshSchedule object:

  $result = $service_obj->Method(...);
  $result->Att1->Frequency

=head1 DESCRIPTION

The schedule for a dashboard refresh.

=head1 ATTRIBUTES


=head2 Frequency => L<Paws::CloudTrail::RefreshScheduleFrequency>

The frequency at which you want the dashboard refreshed.


=head2 Status => Str

Specifies whether the refresh schedule is enabled. Set the value to
C<ENABLED> to enable the refresh schedule, or to C<DISABLED> to turn
off the refresh schedule.


=head2 TimeOfDay => Str

The time of day in UTC to run the schedule; for hourly only refer to
minutes; default is 00:00.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

