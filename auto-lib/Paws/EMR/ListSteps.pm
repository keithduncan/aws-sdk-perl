
package Paws::EMR::ListSteps;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has StepIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StepStates => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSteps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::ListStepsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListSteps - Arguments for method ListSteps on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSteps on the
L<Amazon EMR|Paws::EMR> service. Use the attributes of this class
as arguments to method ListSteps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSteps.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $ListStepsOutput = $elasticmapreduce->ListSteps(
      ClusterId => 'MyClusterId',
      Marker    => 'MyMarker',      # OPTIONAL
      StepIds   => [
        'MyXmlString', ...          # max: 10280
      ],    # OPTIONAL
      StepStates => [
        'PENDING',
        ... # values: PENDING, CANCEL_PENDING, RUNNING, COMPLETED, CANCELLED, FAILED, INTERRUPTED
      ],    # OPTIONAL
    );

    # Results:
    my $Marker = $ListStepsOutput->Marker;
    my $Steps  = $ListStepsOutput->Steps;

    # Returns a L<Paws::EMR::ListStepsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/ListSteps>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

The identifier of the cluster for which to list the steps.



=head2 Marker => Str

The maximum number of steps that a single C<ListSteps> action returns
is 50. To return a longer list of steps, use multiple C<ListSteps>
actions along with the C<Marker> parameter, which is a pagination token
that indicates the next set of results to retrieve.



=head2 StepIds => ArrayRef[Str|Undef]

The filter to limit the step list based on the identifier of the steps.
You can specify a maximum of ten Step IDs. The character constraint
applies to the overall length of the array.



=head2 StepStates => ArrayRef[Str|Undef]

The filter to limit the step list based on certain states.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSteps in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

