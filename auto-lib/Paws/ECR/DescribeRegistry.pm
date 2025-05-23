
package Paws::ECR::DescribeRegistry;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRegistry');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::DescribeRegistryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribeRegistry - Arguments for method DescribeRegistry on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRegistry on the
L<Amazon Elastic Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method DescribeRegistry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRegistry.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $DescribeRegistryResponse = $api . ecr->DescribeRegistry();

    # Results:
    my $RegistryId = $DescribeRegistryResponse->RegistryId;
    my $ReplicationConfiguration =
      $DescribeRegistryResponse->ReplicationConfiguration;

    # Returns a L<Paws::ECR::DescribeRegistryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/DescribeRegistry>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRegistry in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

