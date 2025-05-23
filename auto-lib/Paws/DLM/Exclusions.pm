# Generated by default/object.tt
package Paws::DLM::Exclusions;
  use Moose;
  has ExcludeBootVolumes => (is => 'ro', isa => 'Bool');
  has ExcludeTags => (is => 'ro', isa => 'ArrayRef[Paws::DLM::Tag]');
  has ExcludeVolumeTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::Exclusions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DLM::Exclusions object:

  $service_obj->Method(Att1 => { ExcludeBootVolumes => $value, ..., ExcludeVolumeTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DLM::Exclusions object:

  $result = $service_obj->Method(...);
  $result->Att1->ExcludeBootVolumes

=head1 DESCRIPTION

B<[Default policies only]> Specifies exclusion parameters for volumes
or instances for which you do not want to create snapshots or AMIs. The
policy will not create snapshots or AMIs for target resources that
match any of the specified exclusion parameters.

=head1 ATTRIBUTES


=head2 ExcludeBootVolumes => Bool

B<[Default policies for EBS snapshots only]> Indicates whether to
exclude volumes that are attached to instances as the boot volume. If
you exclude boot volumes, only volumes attached as data (non-boot)
volumes will be backed up by the policy. To exclude boot volumes,
specify C<true>.


=head2 ExcludeTags => ArrayRef[L<Paws::DLM::Tag>]

B<[Default policies for EBS-backed AMIs only]> Specifies whether to
exclude volumes that have specific tags.


=head2 ExcludeVolumeTypes => ArrayRef[Str|Undef]

B<[Default policies for EBS snapshots only]> Specifies the volume types
to exclude. Volumes of the specified types will not be targeted by the
policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

