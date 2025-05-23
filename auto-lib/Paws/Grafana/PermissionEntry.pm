# Generated by default/object.tt
package Paws::Grafana::PermissionEntry;
  use Moose;
  has Role => (is => 'ro', isa => 'Str', request_name => 'role', traits => ['NameInRequest'], required => 1);
  has User => (is => 'ro', isa => 'Paws::Grafana::User', request_name => 'user', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::PermissionEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Grafana::PermissionEntry object:

  $service_obj->Method(Att1 => { Role => $value, ..., User => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Grafana::PermissionEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Role

=head1 DESCRIPTION

A structure containing the identity of one user or group and the
C<Admin>, C<Editor>, or C<Viewer> role that they have.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Role => Str

Specifies whether the user or group has the C<Admin>, C<Editor>, or
C<Viewer> role.


=head2 B<REQUIRED> User => L<Paws::Grafana::User>

A structure with the ID of the user or group with this role.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Grafana>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

