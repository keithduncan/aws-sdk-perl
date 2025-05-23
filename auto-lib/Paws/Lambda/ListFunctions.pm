
package Paws::Lambda::ListFunctions;
  use Moose;
  has FunctionVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'FunctionVersion');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Marker');
  has MasterRegion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'MasterRegion');
  has MaxItems => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxItems');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFunctions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::ListFunctionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListFunctions - Arguments for method ListFunctions on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFunctions on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method ListFunctions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFunctions.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To get a list of Lambda functions
    # This operation returns a list of Lambda functions.
    my $ListFunctionsResponse = $lambda->ListFunctions();

    # Results:
    my $Functions  = $ListFunctionsResponse->Functions;
    my $NextMarker = $ListFunctionsResponse->NextMarker;

    # Returns a L<Paws::Lambda::ListFunctionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/ListFunctions>

=head1 ATTRIBUTES


=head2 FunctionVersion => Str

Set to C<ALL> to include entries for all published versions of each
function.

Valid values are: C<"ALL">

=head2 Marker => Str

Specify the pagination token that's returned by a previous request to
retrieve the next page of results.



=head2 MasterRegion => Str

For Lambda@Edge functions, the Amazon Web Services Region of the master
function. For example, C<us-east-1> filters the list of functions to
include only Lambda@Edge functions replicated from a master function in
US East (N. Virginia). If specified, you must set C<FunctionVersion> to
C<ALL>.



=head2 MaxItems => Int

The maximum number of functions to return in the response. Note that
C<ListFunctions> returns a maximum of 50 items in each response, even
if you set the number higher.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFunctions in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

