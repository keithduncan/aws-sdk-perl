
package Paws::ECS::DescribeClusters;
  use Moose;
  has Clusters => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'clusters' );
  has Include => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'include' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::DescribeClustersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeClusters - Arguments for method DescribeClusters on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClusters on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DescribeClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClusters.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
  # To describe a cluster
  # This example provides a description of the specified cluster in your default
  # region.
    my $DescribeClustersResponse =
      $ecs->DescribeClusters( 'Clusters' => ['default'] );

    # Results:
    my $clusters = $DescribeClustersResponse->clusters;
    my $failures = $DescribeClustersResponse->failures;

    # Returns a L<Paws::ECS::DescribeClustersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DescribeClusters>

=head1 ATTRIBUTES


=head2 Clusters => ArrayRef[Str|Undef]

A list of up to 100 cluster names or full cluster Amazon Resource Name
(ARN) entries. If you do not specify a cluster, the default cluster is
assumed.



=head2 Include => ArrayRef[Str|Undef]

Determines whether to include additional information about the clusters
in the response. If this field is omitted, this information isn't
included.

If C<ATTACHMENTS> is specified, the attachments for the container
instances or tasks within the cluster are included, for example the
capacity providers.

If C<SETTINGS> is specified, the settings for the cluster are included.

If C<CONFIGURATIONS> is specified, the configuration for the cluster is
included.

If C<STATISTICS> is specified, the task and service count is included,
separated by launch type.

If C<TAGS> is specified, the metadata tags associated with the cluster
are included.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClusters in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

