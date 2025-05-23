# Generated by default/object.tt
package Paws::IoTTwinMaker::PropertyValue;
  use Moose;
  has Time => (is => 'ro', isa => 'Str', request_name => 'time', traits => ['NameInRequest']);
  has Timestamp => (is => 'ro', isa => 'Str', request_name => 'timestamp', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Paws::IoTTwinMaker::DataValue', request_name => 'value', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::PropertyValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTTwinMaker::PropertyValue object:

  $service_obj->Method(Att1 => { Time => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTTwinMaker::PropertyValue object:

  $result = $service_obj->Method(...);
  $result->Att1->Time

=head1 DESCRIPTION

An object that contains information about a value for a time series
property.

=head1 ATTRIBUTES


=head2 Time => Str

ISO8601 DateTime of a value for a time series property.

The time for when the property value was recorded in ISO 8601 format:
I<YYYY-MM-DDThh:mm:ss[.SSSSSSSSS][Z/E<plusmn>HH:mm]>.

=over

=item *

I<[YYYY]>: year

=item *

I<[MM]>: month

=item *

I<[DD]>: day

=item *

I<[hh]>: hour

=item *

I<[mm]>: minute

=item *

I<[ss]>: seconds

=item *

I<[.SSSSSSSSS]>: additional precision, where precedence is maintained.
For example: [.573123] is equal to 573123000 nanoseconds.

=item *

I<Z>: default timezone UTC

=item *

I<E<plusmn> HH:mm>: time zone offset in Hours and Minutes.

=back

I<Required sub-fields>: YYYY-MM-DDThh:mm:ss and [Z/E<plusmn>HH:mm]


=head2 Timestamp => Str

The timestamp of a value for a time series property.


=head2 B<REQUIRED> Value => L<Paws::IoTTwinMaker::DataValue>

An object that specifies a value for a time series property.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

