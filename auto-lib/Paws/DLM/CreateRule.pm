# Generated by default/object.tt
package Paws::DLM::CreateRule;
  use Moose;
  has CronExpression => (is => 'ro', isa => 'Str');
  has Interval => (is => 'ro', isa => 'Int');
  has IntervalUnit => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');
  has Scripts => (is => 'ro', isa => 'ArrayRef[Paws::DLM::Script]');
  has Times => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::CreateRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DLM::CreateRule object:

  $service_obj->Method(Att1 => { CronExpression => $value, ..., Times => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DLM::CreateRule object:

  $result = $service_obj->Method(...);
  $result->Att1->CronExpression

=head1 DESCRIPTION

B<[Custom snapshot and AMI policies only]> Specifies when the policy
should create snapshots or AMIs.

=over

=item *

You must specify either B<CronExpression>, or B<Interval>,
B<IntervalUnit>, and B<Times>.

=item *

If you need to specify an ArchiveRule
(https://docs.aws.amazon.com/dlm/latest/APIReference/API_ArchiveRule.html)
for the schedule, then you must specify a creation frequency of at
least 28 days.

=back


=head1 ATTRIBUTES


=head2 CronExpression => Str

The schedule, as a Cron expression. The schedule interval must be
between 1 hour and 1 year. For more information, see the Cron
expressions reference
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-cron-expressions.html)
in the I<Amazon EventBridge User Guide>.


=head2 Interval => Int

The interval between snapshots. The supported values are 1, 2, 3, 4, 6,
8, 12, and 24.


=head2 IntervalUnit => Str

The interval unit.


=head2 Location => Str

B<[Custom snapshot policies only]> Specifies the destination for
snapshots created by the policy. The allowed destinations depend on the
location of the targeted resources.

=over

=item *

If the policy targets resources in a Region, then you must create
snapshots in the same Region as the source resource.

=item *

If the policy targets resources in a Local Zone, you can create
snapshots in the same Local Zone or in its parent Region.

=item *

If the policy targets resources on an Outpost, then you can create
snapshots on the same Outpost or in its parent Region.

=back

Specify one of the following values:

=over

=item *

To create snapshots in the same Region as the source resource, specify
C<CLOUD>.

=item *

To create snapshots in the same Local Zone as the source resource,
specify C<LOCAL_ZONE>.

=item *

To create snapshots on the same Outpost as the source resource, specify
C<OUTPOST_LOCAL>.

=back

Default: C<CLOUD>


=head2 Scripts => ArrayRef[L<Paws::DLM::Script>]

B<[Custom snapshot policies that target instances only]> Specifies pre
and/or post scripts for a snapshot lifecycle policy that targets
instances. This is useful for creating application-consistent
snapshots, or for performing specific administrative tasks before or
after Amazon Data Lifecycle Manager initiates snapshot creation.

For more information, see Automating application-consistent snapshots
with pre and post scripts
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/automate-app-consistent-backups.html).


=head2 Times => ArrayRef[Str|Undef]

The time, in UTC, to start the operation. The supported format is
hh:mm.

The operation occurs within a one-hour window following the specified
time. If you do not specify a time, Amazon Data Lifecycle Manager
selects a time within the next 24 hours.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

