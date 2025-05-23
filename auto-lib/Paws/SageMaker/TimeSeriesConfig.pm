# Generated by default/object.tt
package Paws::SageMaker::TimeSeriesConfig;
  use Moose;
  has GroupingAttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ItemIdentifierAttributeName => (is => 'ro', isa => 'Str', required => 1);
  has TargetAttributeName => (is => 'ro', isa => 'Str', required => 1);
  has TimestampAttributeName => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TimeSeriesConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TimeSeriesConfig object:

  $service_obj->Method(Att1 => { GroupingAttributeNames => $value, ..., TimestampAttributeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TimeSeriesConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupingAttributeNames

=head1 DESCRIPTION

The collection of components that defines the time-series.

=head1 ATTRIBUTES


=head2 GroupingAttributeNames => ArrayRef[Str|Undef]

A set of columns names that can be grouped with the item identifier
column to create a composite key for which a target value is predicted.


=head2 B<REQUIRED> ItemIdentifierAttributeName => Str

The name of the column that represents the set of item identifiers for
which you want to predict the target value.


=head2 B<REQUIRED> TargetAttributeName => Str

The name of the column representing the target variable that you want
to predict for each item in your dataset. The data type of the target
variable must be numerical.


=head2 B<REQUIRED> TimestampAttributeName => Str

The name of the column indicating a point in time at which the target
value of a given item is recorded.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

