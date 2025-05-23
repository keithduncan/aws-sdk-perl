# Generated by default/object.tt
package Paws::SecurityHub::StandardsControlAssociationUpdate;
  use Moose;
  has AssociationStatus => (is => 'ro', isa => 'Str', required => 1);
  has SecurityControlId => (is => 'ro', isa => 'Str', required => 1);
  has StandardsArn => (is => 'ro', isa => 'Str', required => 1);
  has UpdatedReason => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::StandardsControlAssociationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::StandardsControlAssociationUpdate object:

  $service_obj->Method(Att1 => { AssociationStatus => $value, ..., UpdatedReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::StandardsControlAssociationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationStatus

=head1 DESCRIPTION

An array of requested updates to the enablement status of controls in
specified standards. The objects in the array include a security
control ID, the Amazon Resource Name (ARN) of the standard, the
requested enablement status, and the reason for updating the enablement
status.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationStatus => Str

The desired enablement status of the control in the standard.


=head2 B<REQUIRED> SecurityControlId => Str

The unique identifier for the security control whose enablement status
you want to update.


=head2 B<REQUIRED> StandardsArn => Str

The Amazon Resource Name (ARN) of the standard in which you want to
update the control's enablement status.


=head2 UpdatedReason => Str

The reason for updating the control's enablement status in the
standard.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

