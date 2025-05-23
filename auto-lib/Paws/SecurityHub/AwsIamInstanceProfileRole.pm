# Generated by default/object.tt
package Paws::SecurityHub::AwsIamInstanceProfileRole;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AssumeRolePolicyDocument => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str');
  has RoleId => (is => 'ro', isa => 'Str');
  has RoleName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsIamInstanceProfileRole

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsIamInstanceProfileRole object:

  $service_obj->Method(Att1 => { Arn => $value, ..., RoleName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsIamInstanceProfileRole object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a role associated with an instance profile.

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the role.


=head2 AssumeRolePolicyDocument => Str

The policy that grants an entity permission to assume the role.


=head2 CreateDate => Str

Indicates when the role was created.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).


=head2 Path => Str

The path to the role.


=head2 RoleId => Str

The identifier of the role.


=head2 RoleName => Str

The name of the role.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

