# Generated by default/object.tt
package Paws::ApplicationSignals::ExclusionWindow;
  use Moose;
  has Reason => (is => 'ro', isa => 'Str');
  has RecurrenceRule => (is => 'ro', isa => 'Paws::ApplicationSignals::RecurrenceRule');
  has StartTime => (is => 'ro', isa => 'Str');
  has Window => (is => 'ro', isa => 'Paws::ApplicationSignals::Window', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::ExclusionWindow

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationSignals::ExclusionWindow object:

  $service_obj->Method(Att1 => { Reason => $value, ..., Window => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationSignals::ExclusionWindow object:

  $result = $service_obj->Method(...);
  $result->Att1->Reason

=head1 DESCRIPTION

The core SLO time window exclusion object that includes Window,
StartTime, RecurrenceRule, and Reason.

=head1 ATTRIBUTES


=head2 Reason => Str

A description explaining why this time period should be excluded from
SLO calculations.


=head2 RecurrenceRule => L<Paws::ApplicationSignals::RecurrenceRule>

The recurrence rule for the SLO time window exclusion. Supports both
cron and rate expressions.


=head2 StartTime => Str

The start of the SLO time window exclusion. Defaults to current time if
not specified.


=head2 B<REQUIRED> Window => L<Paws::ApplicationSignals::Window>

The SLO time window exclusion .



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationSignals>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

