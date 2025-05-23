
package Paws::CloudFormation::DescribeTypeRegistration;
  use Moose;
  has RegistrationToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTypeRegistration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeTypeRegistrationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTypeRegistrationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeTypeRegistration - Arguments for method DescribeTypeRegistration on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTypeRegistration on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeTypeRegistration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTypeRegistration.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeTypeRegistrationOutput =
      $cloudformation->DescribeTypeRegistration(
      RegistrationToken => 'MyRegistrationToken',

      );

    # Results:
    my $Description    = $DescribeTypeRegistrationOutput->Description;
    my $ProgressStatus = $DescribeTypeRegistrationOutput->ProgressStatus;
    my $TypeArn        = $DescribeTypeRegistrationOutput->TypeArn;
    my $TypeVersionArn = $DescribeTypeRegistrationOutput->TypeVersionArn;

    # Returns a L<Paws::CloudFormation::DescribeTypeRegistrationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeTypeRegistration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegistrationToken => Str

The identifier for this registration request.

This registration token is generated by CloudFormation when you
initiate a registration request using RegisterType.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTypeRegistration in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

