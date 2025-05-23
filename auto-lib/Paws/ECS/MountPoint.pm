# Generated by default/object.tt
package Paws::ECS::MountPoint;
  use Moose;
  has ContainerPath => (is => 'ro', isa => 'Str', request_name => 'containerPath', traits => ['NameInRequest']);
  has ReadOnly => (is => 'ro', isa => 'Bool', request_name => 'readOnly', traits => ['NameInRequest']);
  has SourceVolume => (is => 'ro', isa => 'Str', request_name => 'sourceVolume', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::MountPoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::MountPoint object:

  $service_obj->Method(Att1 => { ContainerPath => $value, ..., SourceVolume => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::MountPoint object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerPath

=head1 DESCRIPTION

The details for a volume mount point that's used in a container
definition.

=head1 ATTRIBUTES


=head2 ContainerPath => Str

The path on the container to mount the host volume at.


=head2 ReadOnly => Bool

If this value is C<true>, the container has read-only access to the
volume. If this value is C<false>, then the container can write to the
volume. The default value is C<false>.


=head2 SourceVolume => Str

The name of the volume to mount. Must be a volume name referenced in
the C<name> parameter of task definition C<volume>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

