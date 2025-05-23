# Generated by default/object.tt
package Paws::IoTSiteWise::AssetModelPropertyDefinition;
  use Moose;
  has DataType => (is => 'ro', isa => 'Str', request_name => 'dataType', traits => ['NameInRequest'], required => 1);
  has DataTypeSpec => (is => 'ro', isa => 'Str', request_name => 'dataTypeSpec', traits => ['NameInRequest']);
  has ExternalId => (is => 'ro', isa => 'Str', request_name => 'externalId', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Paws::IoTSiteWise::PropertyType', request_name => 'type', traits => ['NameInRequest'], required => 1);
  has Unit => (is => 'ro', isa => 'Str', request_name => 'unit', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::AssetModelPropertyDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSiteWise::AssetModelPropertyDefinition object:

  $service_obj->Method(Att1 => { DataType => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSiteWise::AssetModelPropertyDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->DataType

=head1 DESCRIPTION

Contains an asset model property definition. This property definition
is applied to all assets created from the asset model.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataType => Str

The data type of the property definition.

If you specify C<STRUCT>, you must also specify C<dataTypeSpec> to
identify the type of the structure for this property.


=head2 DataTypeSpec => Str

The data type of the structure for this property. This parameter is
required on properties that have the C<STRUCT> data type.

The options for this parameter depend on the type of the composite
model in which you define this property. Use C<AWS/ALARM_STATE> for
alarm state in alarm composite models.


=head2 ExternalId => Str

An external ID to assign to the property definition. The external ID
must be unique among property definitions within this asset model. For
more information, see Using external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids)
in the I<IoT SiteWise User Guide>.


=head2 Id => Str

The ID to assign to the asset model property, if desired. IoT SiteWise
automatically generates a unique ID for you, so this parameter is never
required. However, if you prefer to supply your own ID instead, you can
specify it here in UUID format. If you specify your own ID, it must be
globally unique.


=head2 B<REQUIRED> Name => Str

The name of the property definition.


=head2 B<REQUIRED> Type => L<Paws::IoTSiteWise::PropertyType>

The property definition type (see C<PropertyType>). You can only
specify one type in a property definition.


=head2 Unit => Str

The unit of the property definition, such as C<Newtons> or C<RPM>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

