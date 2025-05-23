# Generated by default/object.tt
package Paws::LocationService::ListGeofenceCollectionsResponseEntry;
  use Moose;
  has CollectionName => (is => 'ro', isa => 'Str', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has PricingPlan => (is => 'ro', isa => 'Str');
  has PricingPlanDataSource => (is => 'ro', isa => 'Str');
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::ListGeofenceCollectionsResponseEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LocationService::ListGeofenceCollectionsResponseEntry object:

  $service_obj->Method(Att1 => { CollectionName => $value, ..., UpdateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LocationService::ListGeofenceCollectionsResponseEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->CollectionName

=head1 DESCRIPTION

Contains the geofence collection details.

The returned geometry will always match the geometry format used when
the geofence was created.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionName => Str

The name of the geofence collection.


=head2 B<REQUIRED> CreateTime => Str

The timestamp for when the geofence collection was created in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>


=head2 B<REQUIRED> Description => Str

The description for the geofence collection


=head2 PricingPlan => Str

No longer used. Always returns C<RequestBasedUsage>.


=head2 PricingPlanDataSource => Str

No longer used. Always returns an empty string.


=head2 B<REQUIRED> UpdateTime => Str

Specifies a timestamp for when the resource was last updated in ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

