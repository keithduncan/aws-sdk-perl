
package Paws::ApplicationInsights::DescribeWorkload;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has ComponentName => (is => 'ro', isa => 'Str', required => 1);
  has ResourceGroupName => (is => 'ro', isa => 'Str', required => 1);
  has WorkloadId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkload');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationInsights::DescribeWorkloadResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeWorkload - Arguments for method DescribeWorkload on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorkload on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method DescribeWorkload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorkload.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $DescribeWorkloadResponse = $applicationinsights->DescribeWorkload(
      ComponentName     => 'MyComponentName',
      ResourceGroupName => 'MyResourceGroupName',
      WorkloadId        => 'MyWorkloadId',
      AccountId         => 'MyAccountId',           # OPTIONAL
    );

    # Results:
    my $WorkloadConfiguration =
      $DescribeWorkloadResponse->WorkloadConfiguration;
    my $WorkloadId      = $DescribeWorkloadResponse->WorkloadId;
    my $WorkloadRemarks = $DescribeWorkloadResponse->WorkloadRemarks;

    # Returns a L<Paws::ApplicationInsights::DescribeWorkloadResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/DescribeWorkload>

=head1 ATTRIBUTES


=head2 AccountId => Str

The Amazon Web Services account ID for the workload owner.



=head2 B<REQUIRED> ComponentName => Str

The name of the component.



=head2 B<REQUIRED> ResourceGroupName => Str

The name of the resource group.



=head2 B<REQUIRED> WorkloadId => Str

The ID of the workload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorkload in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

