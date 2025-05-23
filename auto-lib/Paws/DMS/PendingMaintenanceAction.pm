# Generated by default/object.tt
package Paws::DMS::PendingMaintenanceAction;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has AutoAppliedAfterDate => (is => 'ro', isa => 'Str');
  has CurrentApplyDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ForcedApplyDate => (is => 'ro', isa => 'Str');
  has OptInStatus => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::PendingMaintenanceAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::PendingMaintenanceAction object:

  $service_obj->Method(Att1 => { Action => $value, ..., OptInStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::PendingMaintenanceAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Describes a maintenance action pending for an DMS resource, including
when and how it will be applied. This data type is a response element
to the C<DescribePendingMaintenanceActions> operation.

=head1 ATTRIBUTES


=head2 Action => Str

The type of pending maintenance action that is available for the
resource.


=head2 AutoAppliedAfterDate => Str

The date of the maintenance window when the action is to be applied.
The maintenance action is applied to the resource during its first
maintenance window after this date. If this date is specified, any
C<next-maintenance> opt-in requests are ignored.


=head2 CurrentApplyDate => Str

The effective date when the pending maintenance action will be applied
to the resource. This date takes into account opt-in requests received
from the C<ApplyPendingMaintenanceAction> API operation, and also the
C<AutoAppliedAfterDate> and C<ForcedApplyDate> parameter values. This
value is blank if an opt-in request has not been received and nothing
has been specified for C<AutoAppliedAfterDate> or C<ForcedApplyDate>.


=head2 Description => Str

A description providing more detail about the maintenance action.


=head2 ForcedApplyDate => Str

The date when the maintenance action will be automatically applied. The
maintenance action is applied to the resource on this date regardless
of the maintenance window for the resource. If this date is specified,
any C<immediate> opt-in requests are ignored.


=head2 OptInStatus => Str

The type of opt-in request that has been received for the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

