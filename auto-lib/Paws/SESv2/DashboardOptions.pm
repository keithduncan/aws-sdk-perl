# Generated by default/object.tt
package Paws::SESv2::DashboardOptions;
  use Moose;
  has EngagementMetrics => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::DashboardOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::DashboardOptions object:

  $service_obj->Method(Att1 => { EngagementMetrics => $value, ..., EngagementMetrics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::DashboardOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->EngagementMetrics

=head1 DESCRIPTION

An object containing additional settings for your VDM configuration as
applicable to the Dashboard.

=head1 ATTRIBUTES


=head2 EngagementMetrics => Str

Specifies the status of your VDM engagement metrics collection. Can be
one of the following:

=over

=item *

C<ENABLED> E<ndash> Amazon SES enables engagement metrics for the
configuration set.

=item *

C<DISABLED> E<ndash> Amazon SES disables engagement metrics for the
configuration set.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

