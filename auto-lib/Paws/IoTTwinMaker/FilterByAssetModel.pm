# Generated by default/object.tt
package Paws::IoTTwinMaker::FilterByAssetModel;
  use Moose;
  has AssetModelExternalId => (is => 'ro', isa => 'Str', request_name => 'assetModelExternalId', traits => ['NameInRequest']);
  has AssetModelId => (is => 'ro', isa => 'Str', request_name => 'assetModelId', traits => ['NameInRequest']);
  has IncludeAssets => (is => 'ro', isa => 'Bool', request_name => 'includeAssets', traits => ['NameInRequest']);
  has IncludeOffspring => (is => 'ro', isa => 'Bool', request_name => 'includeOffspring', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::FilterByAssetModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTTwinMaker::FilterByAssetModel object:

  $service_obj->Method(Att1 => { AssetModelExternalId => $value, ..., IncludeOffspring => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTTwinMaker::FilterByAssetModel object:

  $result = $service_obj->Method(...);
  $result->Att1->AssetModelExternalId

=head1 DESCRIPTION

Filter by asset model.

=head1 ATTRIBUTES


=head2 AssetModelExternalId => Str

The external-Id property of an asset model.


=head2 AssetModelId => Str

The asset model Id.


=head2 IncludeAssets => Bool

Bolean to include assets.


=head2 IncludeOffspring => Bool

Include asset offspring. [need desc.]



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

