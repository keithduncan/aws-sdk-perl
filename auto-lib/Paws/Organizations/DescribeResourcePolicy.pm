
package Paws::Organizations::DescribeResourcePolicy;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::DescribeResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeResourcePolicy - Arguments for method DescribeResourcePolicy on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeResourcePolicy on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method DescribeResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeResourcePolicy.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    my $DescribeResourcePolicyResponse =
      $organizations->DescribeResourcePolicy();

    # Results:
    my $ResourcePolicy = $DescribeResourcePolicyResponse->ResourcePolicy;

    # Returns a L<Paws::Organizations::DescribeResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/DescribeResourcePolicy>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeResourcePolicy in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

