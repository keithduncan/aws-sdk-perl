
package Paws::ECS::ListContainerInstances;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has Filter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filter' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListContainerInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::ListContainerInstancesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListContainerInstances - Arguments for method ListContainerInstances on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListContainerInstances on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method ListContainerInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListContainerInstances.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
 # To list your available container instances in a cluster
 # This example lists all of your available container instances in the specified
 # cluster in your default region.
    my $ListContainerInstancesResponse =
      $ecs->ListContainerInstances( 'Cluster' => 'default' );

    # Results:
    my $containerInstanceArns =
      $ListContainerInstancesResponse->containerInstanceArns;

    # Returns a L<Paws::ECS::ListContainerInstancesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/ListContainerInstances>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the container instances to list. If you do not specify a cluster,
the default cluster is assumed.



=head2 Filter => Str

You can filter the results of a C<ListContainerInstances> operation
with cluster query language statements. For more information, see
Cluster Query Language
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 MaxResults => Int

The maximum number of container instance results that
C<ListContainerInstances> returned in paginated output. When this
parameter is used, C<ListContainerInstances> only returns C<maxResults>
results in a single page along with a C<nextToken> response element.
The remaining results of the initial request can be seen by sending
another C<ListContainerInstances> request with the returned
C<nextToken> value. This value can be between 1 and 100. If this
parameter isn't used, then C<ListContainerInstances> returns up to 100
results and a C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a C<ListContainerInstances>
request indicating that more results are available to fulfill the
request and further calls are needed. If C<maxResults> was provided,
it's possible the number of results to be fewer than C<maxResults>.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.



=head2 Status => Str

Filters the container instances by status. For example, if you specify
the C<DRAINING> status, the results include only container instances
that have been set to C<DRAINING> using UpdateContainerInstancesState
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateContainerInstancesState.html).
If you don't specify this parameter, the default is to include
container instances set to all states other than C<INACTIVE>.

Valid values are: C<"ACTIVE">, C<"DRAINING">, C<"REGISTERING">, C<"DEREGISTERING">, C<"REGISTRATION_FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListContainerInstances in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

