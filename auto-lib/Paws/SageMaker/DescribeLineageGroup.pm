
package Paws::SageMaker::DescribeLineageGroup;
  use Moose;
  has LineageGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLineageGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeLineageGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeLineageGroup - Arguments for method DescribeLineageGroup on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLineageGroup on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeLineageGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLineageGroup.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeLineageGroupResponse = $api . sagemaker->DescribeLineageGroup(
      LineageGroupName => 'MyExperimentEntityName',

    );

    # Results:
    my $CreatedBy        = $DescribeLineageGroupResponse->CreatedBy;
    my $CreationTime     = $DescribeLineageGroupResponse->CreationTime;
    my $Description      = $DescribeLineageGroupResponse->Description;
    my $DisplayName      = $DescribeLineageGroupResponse->DisplayName;
    my $LastModifiedBy   = $DescribeLineageGroupResponse->LastModifiedBy;
    my $LastModifiedTime = $DescribeLineageGroupResponse->LastModifiedTime;
    my $LineageGroupArn  = $DescribeLineageGroupResponse->LineageGroupArn;
    my $LineageGroupName = $DescribeLineageGroupResponse->LineageGroupName;

    # Returns a L<Paws::SageMaker::DescribeLineageGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeLineageGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LineageGroupName => Str

The name of the lineage group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLineageGroup in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

