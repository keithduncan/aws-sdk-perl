
package Paws::EC2::DeleteSecurityGroup;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSecurityGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DeleteSecurityGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteSecurityGroup - Arguments for method DeleteSecurityGroup on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSecurityGroup on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeleteSecurityGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSecurityGroup.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To delete a security group
    # This example deletes the specified security group.
    my $DeleteSecurityGroupResult =
      $ec2->DeleteSecurityGroup( 'GroupId' => 'sg-903004f8' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeleteSecurityGroup>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 GroupId => Str

The ID of the security group.



=head2 GroupName => Str

[Default VPC] The name of the security group. You can specify either
the security group name or the security group ID. For security groups
in a nondefault VPC, you must specify the security group ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSecurityGroup in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

