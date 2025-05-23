# Generated by default/object.tt
package Paws::TimestreamWrite::Dimension;
  use Moose;
  has DimensionValueType => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::Dimension

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TimestreamWrite::Dimension object:

  $service_obj->Method(Att1 => { DimensionValueType => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TimestreamWrite::Dimension object:

  $result = $service_obj->Method(...);
  $result->Att1->DimensionValueType

=head1 DESCRIPTION

Represents the metadata attributes of the time series. For example, the
name and Availability Zone of an EC2 instance or the name of the
manufacturer of a wind turbine are dimensions.

=head1 ATTRIBUTES


=head2 DimensionValueType => Str

The data type of the dimension for the time-series data point.


=head2 B<REQUIRED> Name => Str

Dimension represents the metadata attributes of the time series. For
example, the name and Availability Zone of an EC2 instance or the name
of the manufacturer of a wind turbine are dimensions.

For constraints on dimension names, see Naming Constraints
(https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.naming).


=head2 B<REQUIRED> Value => Str

The value of the dimension.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TimestreamWrite>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

