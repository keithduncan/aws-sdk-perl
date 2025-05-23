
package Paws::SSM::DeleteResourcePolicy;
  use Moose;
  has PolicyHash => (is => 'ro', isa => 'Str', required => 1);
  has PolicyId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DeleteResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeleteResourcePolicy - Arguments for method DeleteResourcePolicy on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourcePolicy on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DeleteResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourcePolicy.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DeleteResourcePolicyResponse = $ssm->DeleteResourcePolicy(
      PolicyHash  => 'MyPolicyHash',
      PolicyId    => 'MyPolicyId',
      ResourceArn => 'MyResourceArnString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DeleteResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyHash => Str

ID of the current policy version. The hash helps to prevent multiple
calls from attempting to overwrite a policy.



=head2 B<REQUIRED> PolicyId => Str

The policy ID.



=head2 B<REQUIRED> ResourceArn => Str

Amazon Resource Name (ARN) of the resource to which the policies are
attached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourcePolicy in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

