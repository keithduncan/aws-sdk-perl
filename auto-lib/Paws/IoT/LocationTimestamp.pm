# Generated by default/object.tt
package Paws::IoT::LocationTimestamp;
  use Moose;
  has Unit => (is => 'ro', isa => 'Str', request_name => 'unit', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::LocationTimestamp

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::LocationTimestamp object:

  $service_obj->Method(Att1 => { Unit => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::LocationTimestamp object:

  $result = $service_obj->Method(...);
  $result->Att1->Unit

=head1 DESCRIPTION

Describes how to interpret an application-defined timestamp value from
an MQTT message payload and the precision of that value.

=head1 ATTRIBUTES


=head2 Unit => Str

The precision of the timestamp value that results from the expression
described in C<value>.

Valid values: C<SECONDS> | C<MILLISECONDS> | C<MICROSECONDS> |
C<NANOSECONDS>. The default is C<MILLISECONDS>.


=head2 B<REQUIRED> Value => Str

An expression that returns a long epoch time value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

