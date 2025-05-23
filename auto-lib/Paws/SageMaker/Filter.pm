# Generated by default/object.tt
package Paws::SageMaker::Filter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Operator => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::Filter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::Filter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::Filter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A conditional statement for a search expression that includes a
resource property, a Boolean operator, and a value. Resources that
match the statement are returned in the results from the Search
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_Search.html)
API.

If you specify a C<Value>, but not an C<Operator>, SageMaker uses the
equals operator.

In search, there are several property types:

=over

=item Metrics

To define a metric filter, enter a value using the form
C<"Metrics.E<lt>nameE<gt>">, where C<E<lt>nameE<gt>> is a metric name.
For example, the following filter searches for training jobs with an
C<"accuracy"> metric greater than C<"0.9">:

C<{>

C<"Name": "Metrics.accuracy",>

C<"Operator": "GreaterThan",>

C<"Value": "0.9">

C<}>

=item HyperParameters

To define a hyperparameter filter, enter a value with the form
C<"HyperParameters.E<lt>nameE<gt>">. Decimal hyperparameter values are
treated as a decimal in a comparison if the specified C<Value> is also
a decimal value. If the specified C<Value> is an integer, the decimal
hyperparameter values are treated as integers. For example, the
following filter is satisfied by training jobs with a
C<"learning_rate"> hyperparameter that is less than C<"0.5">:

C<{>

C<"Name": "HyperParameters.learning_rate",>

C<"Operator": "LessThan",>

C<"Value": "0.5">

C<}>

=item Tags

To define a tag filter, enter a value with the form
C<Tags.E<lt>keyE<gt>>.

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

A resource property name. For example, C<TrainingJobName>. For valid
property names, see SearchRecord
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_SearchRecord.html).
You must specify a valid property for the resource.


=head2 Operator => Str

A Boolean binary operator that is used to evaluate the filter. The
operator field contains one of the following values:

=over

=item Equals

The value of C<Name> equals C<Value>.

=item NotEquals

The value of C<Name> doesn't equal C<Value>.

=item Exists

The C<Name> property exists.

=item NotExists

The C<Name> property does not exist.

=item GreaterThan

The value of C<Name> is greater than C<Value>. Not supported for text
properties.

=item GreaterThanOrEqualTo

The value of C<Name> is greater than or equal to C<Value>. Not
supported for text properties.

=item LessThan

The value of C<Name> is less than C<Value>. Not supported for text
properties.

=item LessThanOrEqualTo

The value of C<Name> is less than or equal to C<Value>. Not supported
for text properties.

=item In

The value of C<Name> is one of the comma delimited strings in C<Value>.
Only supported for text properties.

=item Contains

The value of C<Name> contains the string C<Value>. Only supported for
text properties.

A C<SearchExpression> can include the C<Contains> operator multiple
times when the value of C<Name> is one of the following:

=over

=item *

C<Experiment.DisplayName>

=item *

C<Experiment.ExperimentName>

=item *

C<Experiment.Tags>

=item *

C<Trial.DisplayName>

=item *

C<Trial.TrialName>

=item *

C<Trial.Tags>

=item *

C<TrialComponent.DisplayName>

=item *

C<TrialComponent.TrialComponentName>

=item *

C<TrialComponent.Tags>

=item *

C<TrialComponent.InputArtifacts>

=item *

C<TrialComponent.OutputArtifacts>

=back

A C<SearchExpression> can include only one C<Contains> operator for all
other values of C<Name>. In these cases, if you include multiple
C<Contains> operators in the C<SearchExpression>, the result is the
following error message: "C<'CONTAINS' operator usage limit of 1
exceeded.>"

=back



=head2 Value => Str

A value used with C<Name> and C<Operator> to determine which resources
satisfy the filter's condition. For numerical properties, C<Value> must
be an integer or floating-point decimal. For timestamp properties,
C<Value> must be an ISO 8601 date-time string of the following format:
C<YYYY-mm-dd'T'HH:MM:SS>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

