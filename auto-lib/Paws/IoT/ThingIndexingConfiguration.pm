# Generated by default/object.tt
package Paws::IoT::ThingIndexingConfiguration;
  use Moose;
  has CustomFields => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Field]', request_name => 'customFields', traits => ['NameInRequest']);
  has DeviceDefenderIndexingMode => (is => 'ro', isa => 'Str', request_name => 'deviceDefenderIndexingMode', traits => ['NameInRequest']);
  has Filter => (is => 'ro', isa => 'Paws::IoT::IndexingFilter', request_name => 'filter', traits => ['NameInRequest']);
  has ManagedFields => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Field]', request_name => 'managedFields', traits => ['NameInRequest']);
  has NamedShadowIndexingMode => (is => 'ro', isa => 'Str', request_name => 'namedShadowIndexingMode', traits => ['NameInRequest']);
  has ThingConnectivityIndexingMode => (is => 'ro', isa => 'Str', request_name => 'thingConnectivityIndexingMode', traits => ['NameInRequest']);
  has ThingIndexingMode => (is => 'ro', isa => 'Str', request_name => 'thingIndexingMode', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ThingIndexingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ThingIndexingConfiguration object:

  $service_obj->Method(Att1 => { CustomFields => $value, ..., ThingIndexingMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ThingIndexingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomFields

=head1 DESCRIPTION

The thing indexing configuration. For more information, see Managing
Thing Indexing
(https://docs.aws.amazon.com/iot/latest/developerguide/managing-index.html).

=head1 ATTRIBUTES


=head2 CustomFields => ArrayRef[L<Paws::IoT::Field>]

Contains custom field names and their data type.


=head2 DeviceDefenderIndexingMode => Str

Device Defender indexing mode. Valid values are:

=over

=item *

VIOLATIONS E<ndash> Your thing index contains Device Defender
violations. To enable Device Defender indexing,
I<deviceDefenderIndexingMode> must not be set to OFF.

=item *

OFF - Device Defender indexing is disabled.

=back

For more information about Device Defender violations, see Device
Defender Detect.
(https://docs.aws.amazon.com/iot/latest/developerguide/device-defender-detect.html)


=head2 Filter => L<Paws::IoT::IndexingFilter>

Provides additional selections for named shadows and geolocation data.

To add named shadows to your fleet indexing configuration, set
C<namedShadowIndexingMode> to be ON and specify your shadow names in
C<namedShadowNames> filter.

To add geolocation data to your fleet indexing configuration:

=over

=item *

If you store geolocation data in a class/unnamed shadow, set
C<thingIndexingMode> to be C<REGISTRY_AND_SHADOW> and specify your
geolocation data in C<geoLocations> filter.

=item *

If you store geolocation data in a named shadow, set
C<namedShadowIndexingMode> to be C<ON>, add the shadow name in
C<namedShadowNames> filter, and specify your geolocation data in
C<geoLocations> filter. For more information, see Managing fleet
indexing
(https://docs.aws.amazon.com/iot/latest/developerguide/managing-fleet-index.html).

=back



=head2 ManagedFields => ArrayRef[L<Paws::IoT::Field>]

Contains fields that are indexed and whose types are already known by
the Fleet Indexing service. This is an optional field. For more
information, see Managed fields
(https://docs.aws.amazon.com/iot/latest/developerguide/managing-fleet-index.html#managed-field)
in the I<Amazon Web Services IoT Core Developer Guide>.

You can't modify managed fields by updating fleet indexing
configuration.


=head2 NamedShadowIndexingMode => Str

Named shadow indexing mode. Valid values are:

=over

=item *

ON E<ndash> Your thing index contains named shadow. To enable thing
named shadow indexing, I<namedShadowIndexingMode> must not be set to
OFF.

=item *

OFF - Named shadow indexing is disabled.

=back

For more information about Shadows, see IoT Device Shadow service.
(https://docs.aws.amazon.com/iot/latest/developerguide/iot-device-shadows.html)


=head2 ThingConnectivityIndexingMode => Str

Thing connectivity indexing mode. Valid values are:

=over

=item *

STATUS E<ndash> Your thing index contains connectivity status. To
enable thing connectivity indexing, I<thingIndexMode> must not be set
to OFF.

=item *

OFF - Thing connectivity status indexing is disabled.

=back



=head2 B<REQUIRED> ThingIndexingMode => Str

Thing indexing mode. Valid values are:

=over

=item *

REGISTRY E<ndash> Your thing index contains registry data only.

=item *

REGISTRY_AND_SHADOW - Your thing index contains registry and shadow
data.

=item *

OFF - Thing indexing is disabled.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

