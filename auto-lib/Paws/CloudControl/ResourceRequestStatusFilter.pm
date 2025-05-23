# Generated by default/object.tt
package Paws::CloudControl::ResourceRequestStatusFilter;
  use Moose;
  has Operations => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OperationStatuses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl::ResourceRequestStatusFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudControl::ResourceRequestStatusFilter object:

  $service_obj->Method(Att1 => { Operations => $value, ..., OperationStatuses => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudControl::ResourceRequestStatusFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Operations

=head1 DESCRIPTION

The filter criteria to use in determining the requests returned.

=head1 ATTRIBUTES


=head2 Operations => ArrayRef[Str|Undef]

The operation types to include in the filter.


=head2 OperationStatuses => ArrayRef[Str|Undef]

The operation statuses to include in the filter.

=over

=item *

C<PENDING>: The operation has been requested, but not yet initiated.

=item *

C<IN_PROGRESS>: The operation is in progress.

=item *

C<SUCCESS>: The operation completed.

=item *

C<FAILED>: The operation failed.

=item *

C<CANCEL_IN_PROGRESS>: The operation is in the process of being
canceled.

=item *

C<CANCEL_COMPLETE>: The operation has been canceled.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudControl>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

