# Generated by default/object.tt
package Paws::TimestreamQuery::Datum;
  use Moose;
  has ArrayValue => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamQuery::Datum]');
  has NullValue => (is => 'ro', isa => 'Bool');
  has RowValue => (is => 'ro', isa => 'Paws::TimestreamQuery::Row');
  has ScalarValue => (is => 'ro', isa => 'Str');
  has TimeSeriesValue => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamQuery::TimeSeriesDataPoint]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::Datum

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TimestreamQuery::Datum object:

  $service_obj->Method(Att1 => { ArrayValue => $value, ..., TimeSeriesValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TimestreamQuery::Datum object:

  $result = $service_obj->Method(...);
  $result->Att1->ArrayValue

=head1 DESCRIPTION

Datum represents a single data point in a query result.

=head1 ATTRIBUTES


=head2 ArrayValue => ArrayRef[L<Paws::TimestreamQuery::Datum>]

Indicates if the data point is an array.


=head2 NullValue => Bool

Indicates if the data point is null.


=head2 RowValue => L<Paws::TimestreamQuery::Row>

Indicates if the data point is a row.


=head2 ScalarValue => Str

Indicates if the data point is a scalar value such as integer, string,
double, or Boolean.


=head2 TimeSeriesValue => ArrayRef[L<Paws::TimestreamQuery::TimeSeriesDataPoint>]

Indicates if the data point is a timeseries data type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

