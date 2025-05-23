# Generated by default/object.tt
package Paws::IoTTwinMaker::OrderBy;
  use Moose;
  has Order => (is => 'ro', isa => 'Str', request_name => 'order', traits => ['NameInRequest']);
  has PropertyName => (is => 'ro', isa => 'Str', request_name => 'propertyName', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::OrderBy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTTwinMaker::OrderBy object:

  $service_obj->Method(Att1 => { Order => $value, ..., PropertyName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTTwinMaker::OrderBy object:

  $result = $service_obj->Method(...);
  $result->Att1->Order

=head1 DESCRIPTION

Filter criteria that orders the return output. It can be sorted in
ascending or descending order.

=head1 ATTRIBUTES


=head2 Order => Str

The set order that filters results.


=head2 B<REQUIRED> PropertyName => Str

The property name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

