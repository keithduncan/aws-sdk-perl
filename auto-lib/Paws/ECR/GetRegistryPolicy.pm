
package Paws::ECR::GetRegistryPolicy;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRegistryPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::GetRegistryPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::GetRegistryPolicy - Arguments for method GetRegistryPolicy on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRegistryPolicy on the
L<Amazon Elastic Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method GetRegistryPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRegistryPolicy.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $GetRegistryPolicyResponse = $api . ecr->GetRegistryPolicy();

    # Results:
    my $PolicyText = $GetRegistryPolicyResponse->PolicyText;
    my $RegistryId = $GetRegistryPolicyResponse->RegistryId;

    # Returns a L<Paws::ECR::GetRegistryPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/GetRegistryPolicy>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRegistryPolicy in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

