# Generated by default/object.tt
package Paws::SSM::InstancePatchState;
  use Moose;
  has AvailableSecurityUpdateCount => (is => 'ro', isa => 'Int');
  has BaselineId => (is => 'ro', isa => 'Str', required => 1);
  has CriticalNonCompliantCount => (is => 'ro', isa => 'Int');
  has FailedCount => (is => 'ro', isa => 'Int');
  has InstalledCount => (is => 'ro', isa => 'Int');
  has InstalledOtherCount => (is => 'ro', isa => 'Int');
  has InstalledPendingRebootCount => (is => 'ro', isa => 'Int');
  has InstalledRejectedCount => (is => 'ro', isa => 'Int');
  has InstallOverrideList => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has LastNoRebootInstallOperationTime => (is => 'ro', isa => 'Str');
  has MissingCount => (is => 'ro', isa => 'Int');
  has NotApplicableCount => (is => 'ro', isa => 'Int');
  has Operation => (is => 'ro', isa => 'Str', required => 1);
  has OperationEndTime => (is => 'ro', isa => 'Str', required => 1);
  has OperationStartTime => (is => 'ro', isa => 'Str', required => 1);
  has OtherNonCompliantCount => (is => 'ro', isa => 'Int');
  has OwnerInformation => (is => 'ro', isa => 'Str');
  has PatchGroup => (is => 'ro', isa => 'Str', required => 1);
  has RebootOption => (is => 'ro', isa => 'Str');
  has SecurityNonCompliantCount => (is => 'ro', isa => 'Int');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has UnreportedNotApplicableCount => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InstancePatchState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InstancePatchState object:

  $service_obj->Method(Att1 => { AvailableSecurityUpdateCount => $value, ..., UnreportedNotApplicableCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InstancePatchState object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailableSecurityUpdateCount

=head1 DESCRIPTION

Defines the high-level patch compliance state for a managed node,
providing information about the number of installed, missing, not
applicable, and failed patches along with metadata about the operation
when this information was gathered for the managed node.

=head1 ATTRIBUTES


=head2 AvailableSecurityUpdateCount => Int

The number of security-related patches that are available but not
approved because they didn't meet the patch baseline requirements. For
example, an updated version of a patch might have been released before
the specified auto-approval period was over.

Applies to Windows Server managed nodes only.


=head2 B<REQUIRED> BaselineId => Str

The ID of the patch baseline used to patch the managed node.


=head2 CriticalNonCompliantCount => Int

The number of patches per node that are specified as C<Critical> for
compliance reporting in the patch baseline aren't installed. These
patches might be missing, have failed installation, were rejected, or
were installed but awaiting a required managed node reboot. The status
of these managed nodes is C<NON_COMPLIANT>.


=head2 FailedCount => Int

The number of patches from the patch baseline that were attempted to be
installed during the last patching operation, but failed to install.


=head2 InstalledCount => Int

The number of patches from the patch baseline that are installed on the
managed node.


=head2 InstalledOtherCount => Int

The number of patches not specified in the patch baseline that are
installed on the managed node.


=head2 InstalledPendingRebootCount => Int

The number of patches installed by Patch Manager since the last time
the managed node was rebooted.


=head2 InstalledRejectedCount => Int

The number of patches installed on a managed node that are specified in
a C<RejectedPatches> list. Patches with a status of
C<InstalledRejected> were typically installed before they were added to
a C<RejectedPatches> list.

If C<ALLOW_AS_DEPENDENCY> is the specified option for
C<RejectedPatchesAction>, the value of C<InstalledRejectedCount> will
always be C<0> (zero).


=head2 InstallOverrideList => Str

An https URL or an Amazon Simple Storage Service (Amazon S3) path-style
URL to a list of patches to be installed. This patch installation list,
which you maintain in an S3 bucket in YAML format and specify in the
SSM document C<AWS-RunPatchBaseline>, overrides the patches specified
by the default patch baseline.

For more information about the C<InstallOverrideList> parameter, see
SSM Command document for patching: C<AWS-RunPatchBaseline>
(https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-about-aws-runpatchbaseline.html)
in the I<Amazon Web Services Systems Manager User Guide>.


=head2 B<REQUIRED> InstanceId => Str

The ID of the managed node the high-level patch compliance information
was collected for.


=head2 LastNoRebootInstallOperationTime => Str

The time of the last attempt to patch the managed node with C<NoReboot>
specified as the reboot option.


=head2 MissingCount => Int

The number of patches from the patch baseline that are applicable for
the managed node but aren't currently installed.


=head2 NotApplicableCount => Int

The number of patches from the patch baseline that aren't applicable
for the managed node and therefore aren't installed on the node. This
number may be truncated if the list of patch names is very large. The
number of patches beyond this limit are reported in
C<UnreportedNotApplicableCount>.


=head2 B<REQUIRED> Operation => Str

The type of patching operation that was performed: or

=over

=item *

C<SCAN> assesses the patch compliance state.

=item *

C<INSTALL> installs missing patches.

=back



=head2 B<REQUIRED> OperationEndTime => Str

The time the most recent patching operation completed on the managed
node.


=head2 B<REQUIRED> OperationStartTime => Str

The time the most recent patching operation was started on the managed
node.


=head2 OtherNonCompliantCount => Int

The number of patches per node that are specified as other than
C<Critical> or C<Security> but aren't compliant with the patch
baseline. The status of these managed nodes is C<NON_COMPLIANT>.


=head2 OwnerInformation => Str

Placeholder information. This field will always be empty in the current
release of the service.


=head2 B<REQUIRED> PatchGroup => Str

The name of the patch group the managed node belongs to.


=head2 RebootOption => Str

Indicates the reboot option specified in the patch baseline.

Reboot options apply to C<Install> operations only. Reboots aren't
attempted for Patch Manager C<Scan> operations.

=over

=item *

C<RebootIfNeeded>: Patch Manager tries to reboot the managed node if it
installed any patches, or if any patches are detected with a status of
C<InstalledPendingReboot>.

=item *

C<NoReboot>: Patch Manager attempts to install missing packages without
trying to reboot the system. Patches installed with this option are
assigned a status of C<InstalledPendingReboot>. These patches might not
be in effect until a reboot is performed.

=back



=head2 SecurityNonCompliantCount => Int

The number of patches per node that are specified as C<Security> in a
patch advisory aren't installed. These patches might be missing, have
failed installation, were rejected, or were installed but awaiting a
required managed node reboot. The status of these managed nodes is
C<NON_COMPLIANT>.


=head2 SnapshotId => Str

The ID of the patch baseline snapshot used during the patching
operation when this compliance data was collected.


=head2 UnreportedNotApplicableCount => Int

The number of patches beyond the supported limit of
C<NotApplicableCount> that aren't reported by name to Inventory.
Inventory is a tool in Amazon Web Services Systems Manager.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

