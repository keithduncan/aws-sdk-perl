# Generated by default/object.tt
package Paws::IoTSiteWise::AssetModelHierarchy;
  use Moose;
  has ChildAssetModelId => (is => 'ro', isa => 'Str', request_name => 'childAssetModelId', traits => ['NameInRequest'], required => 1);
  has ExternalId => (is => 'ro', isa => 'Str', request_name => 'externalId', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::AssetModelHierarchy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSiteWise::AssetModelHierarchy object:

  $service_obj->Method(Att1 => { ChildAssetModelId => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSiteWise::AssetModelHierarchy object:

  $result = $service_obj->Method(...);
  $result->Att1->ChildAssetModelId

=head1 DESCRIPTION

Describes an asset hierarchy that contains a hierarchy's name, ID, and
child asset model ID that specifies the type of asset that can be in
this hierarchy.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChildAssetModelId => Str

The ID of the asset model, in UUID format. All assets in this hierarchy
must be instances of the C<childAssetModelId> asset model. IoT SiteWise
will always return the actual asset model ID for this value. However,
when you are specifying this value as part of a call to
UpdateAssetModel
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html),
you may provide either the asset model ID or else C<externalId:>
followed by the asset model's external ID. For more information, see
Using external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids)
in the I<IoT SiteWise User Guide>.


=head2 ExternalId => Str

The external ID (if any) provided in the CreateAssetModel
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html)
or UpdateAssetModel
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html)
operation. You can assign an external ID by specifying this value as
part of a call to UpdateAssetModel
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html).
However, you can't change the external ID if one is already assigned.
For more information, see Using external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids)
in the I<IoT SiteWise User Guide>.


=head2 Id => Str

The ID of the asset model hierarchy. This ID is a C<hierarchyId>.

=over

=item *

If you are callling UpdateAssetModel
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html)
to create a I<new> hierarchy: You can specify its ID here, if desired.
IoT SiteWise automatically generates a unique ID for you, so this
parameter is never required. However, if you prefer to supply your own
ID instead, you can specify it here in UUID format. If you specify your
own ID, it must be globally unique.

=item *

If you are calling UpdateAssetModel to modify an I<existing> hierarchy:
This can be either the actual ID in UUID format, or else C<externalId:>
followed by the external ID, if it has one. For more information, see
Referencing objects with external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references)
in the I<IoT SiteWise User Guide>.

=back



=head2 B<REQUIRED> Name => Str

The name of the asset model hierarchy that you specify by using the
CreateAssetModel
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html)
or UpdateAssetModel
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html)
API operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

