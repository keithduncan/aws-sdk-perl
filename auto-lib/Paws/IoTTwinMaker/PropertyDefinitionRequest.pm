# Generated by default/object.tt
package Paws::IoTTwinMaker::PropertyDefinitionRequest;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::IoTTwinMaker::Configuration', request_name => 'configuration', traits => ['NameInRequest']);
  has DataType => (is => 'ro', isa => 'Paws::IoTTwinMaker::DataType', request_name => 'dataType', traits => ['NameInRequest']);
  has DefaultValue => (is => 'ro', isa => 'Paws::IoTTwinMaker::DataValue', request_name => 'defaultValue', traits => ['NameInRequest']);
  has DisplayName => (is => 'ro', isa => 'Str', request_name => 'displayName', traits => ['NameInRequest']);
  has IsExternalId => (is => 'ro', isa => 'Bool', request_name => 'isExternalId', traits => ['NameInRequest']);
  has IsRequiredInEntity => (is => 'ro', isa => 'Bool', request_name => 'isRequiredInEntity', traits => ['NameInRequest']);
  has IsStoredExternally => (is => 'ro', isa => 'Bool', request_name => 'isStoredExternally', traits => ['NameInRequest']);
  has IsTimeSeries => (is => 'ro', isa => 'Bool', request_name => 'isTimeSeries', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::PropertyDefinitionRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTTwinMaker::PropertyDefinitionRequest object:

  $service_obj->Method(Att1 => { Configuration => $value, ..., IsTimeSeries => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTTwinMaker::PropertyDefinitionRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Configuration

=head1 DESCRIPTION

An object that sets information about a property.

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::IoTTwinMaker::Configuration>

A mapping that specifies configuration information about the property.
Use this field to specify information that you read from and write to
an external source.


=head2 DataType => L<Paws::IoTTwinMaker::DataType>

An object that contains information about the data type.


=head2 DefaultValue => L<Paws::IoTTwinMaker::DataValue>

An object that contains the default value.


=head2 DisplayName => Str

A friendly name for the property.


=head2 IsExternalId => Bool

A Boolean value that specifies whether the property ID comes from an
external data store.


=head2 IsRequiredInEntity => Bool

A Boolean value that specifies whether the property is required.


=head2 IsStoredExternally => Bool

A Boolean value that specifies whether the property is stored
externally.


=head2 IsTimeSeries => Bool

A Boolean value that specifies whether the property consists of time
series data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

