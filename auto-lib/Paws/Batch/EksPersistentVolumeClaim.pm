# Generated by default/object.tt
package Paws::Batch::EksPersistentVolumeClaim;
  use Moose;
  has ClaimName => (is => 'ro', isa => 'Str', request_name => 'claimName', traits => ['NameInRequest'], required => 1);
  has ReadOnly => (is => 'ro', isa => 'Bool', request_name => 'readOnly', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::EksPersistentVolumeClaim

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::EksPersistentVolumeClaim object:

  $service_obj->Method(Att1 => { ClaimName => $value, ..., ReadOnly => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::EksPersistentVolumeClaim object:

  $result = $service_obj->Method(...);
  $result->Att1->ClaimName

=head1 DESCRIPTION

A C<persistentVolumeClaim> volume is used to mount a PersistentVolume
(https://kubernetes.io/docs/concepts/storage/persistent-volumes/) into
a Pod. PersistentVolumeClaims are a way for users to "claim" durable
storage without knowing the details of the particular cloud
environment. See the information about PersistentVolumes
(https://kubernetes.io/docs/concepts/storage/persistent-volumes/) in
the I<Kubernetes documentation>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClaimName => Str

The name of the C<persistentVolumeClaim> bounded to a
C<persistentVolume>. For more information, see Persistent Volume Claims
(https://kubernetes.io/docs/concepts/storage/persistent-volumes/#persistentvolumeclaims)
in the I<Kubernetes documentation>.


=head2 ReadOnly => Bool

An optional boolean value indicating if the mount is read only. Default
is false. For more information, see Read Only Mounts
(https://kubernetes.io/docs/concepts/storage/volumes/#read-only-mounts)
in the I<Kubernetes documentation>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

