# Generated by default/object.tt
package Paws::ChimeSDKIdentity::AppInstanceAdmin;
  use Moose;
  has Admin => (is => 'ro', isa => 'Paws::ChimeSDKIdentity::Identity');
  has AppInstanceArn => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::AppInstanceAdmin

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ChimeSDKIdentity::AppInstanceAdmin object:

  $service_obj->Method(Att1 => { Admin => $value, ..., CreatedTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ChimeSDKIdentity::AppInstanceAdmin object:

  $result = $service_obj->Method(...);
  $result->Att1->Admin

=head1 DESCRIPTION

The name and ARN of the admin for the C<AppInstance>.

=head1 ATTRIBUTES


=head2 Admin => L<Paws::ChimeSDKIdentity::Identity>

The C<AppInstanceAdmin> data.


=head2 AppInstanceArn => Str

The ARN of the C<AppInstance> for which the user is an administrator.


=head2 CreatedTimestamp => Str

The time at which an administrator was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ChimeSDKIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

