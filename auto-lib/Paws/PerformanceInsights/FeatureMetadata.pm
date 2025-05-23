# Generated by default/object.tt
package Paws::PerformanceInsights::FeatureMetadata;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::FeatureMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PerformanceInsights::FeatureMetadata object:

  $service_obj->Method(Att1 => { Status => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PerformanceInsights::FeatureMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

The metadata for a feature. For example, the metadata might indicate
that a feature is turned on or off on a specific DB instance.

=head1 ATTRIBUTES


=head2 Status => Str

The status of the feature on the DB instance. Possible values include
the following:

=over

=item *

C<ENABLED> - The feature is enabled on the instance.

=item *

C<DISABLED> - The feature is disabled on the instance.

=item *

C<UNSUPPORTED> - The feature isn't supported on the instance.

=item *

C<ENABLED_PENDING_REBOOT> - The feature is enabled on the instance but
requires a reboot to take effect.

=item *

C<DISABLED_PENDING_REBOOT> - The feature is disabled on the instance
but requires a reboot to take effect.

=item *

C<UNKNOWN> - The feature status couldn't be determined.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

