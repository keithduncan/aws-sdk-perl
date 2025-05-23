# Generated by default/object.tt
package Paws::TimestreamWrite::MeasureValue;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::MeasureValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TimestreamWrite::MeasureValue object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TimestreamWrite::MeasureValue object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Represents the data attribute of the time series. For example, the CPU
utilization of an EC2 instance or the RPM of a wind turbine are
measures. MeasureValue has both name and value.

MeasureValue is only allowed for type C<MULTI>. Using C<MULTI> type,
you can pass multiple data attributes associated with the same time
series in a single record

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the MeasureValue.

For constraints on MeasureValue names, see Naming Constraints
(https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.naming)
in the Amazon Timestream Developer Guide.


=head2 B<REQUIRED> Type => Str

Contains the data type of the MeasureValue for the time-series data
point.


=head2 B<REQUIRED> Value => Str

The value for the MeasureValue. For information, see Data types
(https://docs.aws.amazon.com/timestream/latest/developerguide/writes.html#writes.data-types).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TimestreamWrite>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

