# Generated by default/object.tt
package Paws::SESv2::BatchGetMetricDataQuery;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'Paws::SESv2::Dimensions');
  has EndDate => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Metric => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has StartDate => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::BatchGetMetricDataQuery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::BatchGetMetricDataQuery object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., StartDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::BatchGetMetricDataQuery object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

Represents a single metric data query to include in a batch.

=head1 ATTRIBUTES


=head2 Dimensions => L<Paws::SESv2::Dimensions>

An object that contains mapping between C<MetricDimensionName> and
C<MetricDimensionValue> to filter metrics by.


=head2 B<REQUIRED> EndDate => Str

Represents the end date for the query interval.


=head2 B<REQUIRED> Id => Str

The query identifier.


=head2 B<REQUIRED> Metric => Str

The queried metric. This can be one of the following:

=over

=item *

C<SEND> E<ndash> Emails sent eligible for tracking in the VDM
dashboard. This excludes emails sent to the mailbox simulator and
emails addressed to more than one recipient.

=item *

C<COMPLAINT> E<ndash> Complaints received for your account. This
excludes complaints from the mailbox simulator, those originating from
your account-level suppression list (if enabled), and those for emails
addressed to more than one recipient

=item *

C<PERMANENT_BOUNCE> E<ndash> Permanent bounces - i.e. feedback received
for emails sent to non-existent mailboxes. Excludes bounces from the
mailbox simulator, those originating from your account-level
suppression list (if enabled), and those for emails addressed to more
than one recipient.

=item *

C<TRANSIENT_BOUNCE> E<ndash> Transient bounces - i.e. feedback received
for delivery failures excluding issues with non-existent mailboxes.
Excludes bounces from the mailbox simulator, and those for emails
addressed to more than one recipient.

=item *

C<OPEN> E<ndash> Unique open events for emails including open trackers.
Excludes opens for emails addressed to more than one recipient.

=item *

C<CLICK> E<ndash> Unique click events for emails including wrapped
links. Excludes clicks for emails addressed to more than one recipient.

=item *

C<DELIVERY> E<ndash> Successful deliveries for email sending attempts.
Excludes deliveries to the mailbox simulator and for emails addressed
to more than one recipient.

=item *

C<DELIVERY_OPEN> E<ndash> Successful deliveries for email sending
attempts. Excludes deliveries to the mailbox simulator, for emails
addressed to more than one recipient, and emails without open trackers.

=item *

C<DELIVERY_CLICK> E<ndash> Successful deliveries for email sending
attempts. Excludes deliveries to the mailbox simulator, for emails
addressed to more than one recipient, and emails without click
trackers.

=item *

C<DELIVERY_COMPLAINT> E<ndash> Successful deliveries for email sending
attempts. Excludes deliveries to the mailbox simulator, for emails
addressed to more than one recipient, and emails addressed to
recipients hosted by ISPs with which Amazon SES does not have a
feedback loop agreement.

=back



=head2 B<REQUIRED> Namespace => Str

The query namespace - e.g. C<VDM>


=head2 B<REQUIRED> StartDate => Str

Represents the start date for the query interval.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

