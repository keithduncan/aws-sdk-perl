# Generated by default/object.tt
package Paws::FSX::CreateOpenZFSOriginSnapshotConfiguration;
  use Moose;
  has CopyStrategy => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotARN => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateOpenZFSOriginSnapshotConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::CreateOpenZFSOriginSnapshotConfiguration object:

  $service_obj->Method(Att1 => { CopyStrategy => $value, ..., SnapshotARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::CreateOpenZFSOriginSnapshotConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CopyStrategy

=head1 DESCRIPTION

The snapshot configuration to use when creating an Amazon FSx for
OpenZFS volume from a snapshot.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CopyStrategy => Str

Specifies the strategy used when copying data from the snapshot to the
new volume.

=over

=item *

C<CLONE> - The new volume references the data in the origin snapshot.
Cloning a snapshot is faster than copying data from the snapshot to a
new volume and doesn't consume disk throughput. However, the origin
snapshot can't be deleted if there is a volume using its copied data.

=item *

C<FULL_COPY> - Copies all data from the snapshot to the new volume.

Specify this option to create the volume from a snapshot on another FSx
for OpenZFS file system.

=back

The C<INCREMENTAL_COPY> option is only for updating an existing volume
by using a snapshot from another FSx for OpenZFS file system. For more
information, see CopySnapshotAndUpdateVolume
(https://docs.aws.amazon.com/fsx/latest/APIReference/API_CopySnapshotAndUpdateVolume.html).


=head2 B<REQUIRED> SnapshotARN => Str





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

