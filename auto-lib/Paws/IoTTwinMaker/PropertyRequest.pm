# Generated by default/object.tt
package Paws::IoTTwinMaker::PropertyRequest;
  use Moose;
  has Definition => (is => 'ro', isa => 'Paws::IoTTwinMaker::PropertyDefinitionRequest', request_name => 'definition', traits => ['NameInRequest']);
  has UpdateType => (is => 'ro', isa => 'Str', request_name => 'updateType', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Paws::IoTTwinMaker::DataValue', request_name => 'value', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::PropertyRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTTwinMaker::PropertyRequest object:

  $service_obj->Method(Att1 => { Definition => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTTwinMaker::PropertyRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Definition

=head1 DESCRIPTION

An object that sets information about a property.

=head1 ATTRIBUTES


=head2 Definition => L<Paws::IoTTwinMaker::PropertyDefinitionRequest>

An object that specifies information about a property.


=head2 UpdateType => Str

The update type of the update property request.


=head2 Value => L<Paws::IoTTwinMaker::DataValue>

The value of the property.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

