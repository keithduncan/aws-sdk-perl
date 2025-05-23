
package Paws::ApplicationInsights::RemoveWorkload;
  use Moose;
  has ComponentName => (is => 'ro', isa => 'Str', required => 1);
  has ResourceGroupName => (is => 'ro', isa => 'Str', required => 1);
  has WorkloadId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveWorkload');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationInsights::RemoveWorkloadResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::RemoveWorkload - Arguments for method RemoveWorkload on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveWorkload on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method RemoveWorkload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveWorkload.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $RemoveWorkloadResponse = $applicationinsights->RemoveWorkload(
      ComponentName     => 'MyComponentName',
      ResourceGroupName => 'MyResourceGroupName',
      WorkloadId        => 'MyWorkloadId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/RemoveWorkload>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentName => Str

The name of the component.



=head2 B<REQUIRED> ResourceGroupName => Str

The name of the resource group.



=head2 B<REQUIRED> WorkloadId => Str

The ID of the workload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveWorkload in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

