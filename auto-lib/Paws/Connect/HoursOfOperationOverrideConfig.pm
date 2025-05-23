# Generated by default/object.tt
package Paws::Connect::HoursOfOperationOverrideConfig;
  use Moose;
  has Day => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Paws::Connect::OverrideTimeSlice');
  has StartTime => (is => 'ro', isa => 'Paws::Connect::OverrideTimeSlice');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::HoursOfOperationOverrideConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::HoursOfOperationOverrideConfig object:

  $service_obj->Method(Att1 => { Day => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::HoursOfOperationOverrideConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Day

=head1 DESCRIPTION

Information about the hours of operation override config: day, start
time, and end time.

=head1 ATTRIBUTES


=head2 Day => Str

The day that the hours of operation override applies to.


=head2 EndTime => L<Paws::Connect::OverrideTimeSlice>

The end time that your contact center closes if overrides are applied.


=head2 StartTime => L<Paws::Connect::OverrideTimeSlice>

The start time when your contact center opens if overrides are applied.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

