# Generated by default/object.tt
package Paws::CloudControl::ProgressEvent;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has EventTime => (is => 'ro', isa => 'Str');
  has HooksRequestToken => (is => 'ro', isa => 'Str');
  has Identifier => (is => 'ro', isa => 'Str');
  has Operation => (is => 'ro', isa => 'Str');
  has OperationStatus => (is => 'ro', isa => 'Str');
  has RequestToken => (is => 'ro', isa => 'Str');
  has ResourceModel => (is => 'ro', isa => 'Str');
  has RetryAfter => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl::ProgressEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudControl::ProgressEvent object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., TypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudControl::ProgressEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Represents the current status of a resource operation request. For more
information, see Managing resource operation requests
(https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html)
in the I<Amazon Web Services Cloud Control API User Guide>.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

For requests with a status of C<FAILED>, the associated error code.

For error code definitions, see Handler error codes
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-test-contract-errors.html)
in the I<CloudFormation Command Line Interface User Guide for Extension
Development>.


=head2 EventTime => Str

When the resource operation request was initiated.


=head2 HooksRequestToken => Str

The unique token representing the Hooks operation for the request.


=head2 Identifier => Str

The primary identifier for the resource.

In some cases, the resource identifier may be available before the
resource operation has reached a status of C<SUCCESS>.


=head2 Operation => Str

The resource operation type.


=head2 OperationStatus => Str

The current status of the resource operation request.

=over

=item *

C<PENDING>: The resource operation hasn't yet started.

=item *

C<IN_PROGRESS>: The resource operation is currently in progress.

=item *

C<SUCCESS>: The resource operation has successfully completed.

=item *

C<FAILED>: The resource operation has failed. Refer to the error code
and status message for more information.

=item *

C<CANCEL_IN_PROGRESS>: The resource operation is in the process of
being canceled.

=item *

C<CANCEL_COMPLETE>: The resource operation has been canceled.

=back



=head2 RequestToken => Str

The unique token representing this resource operation request.

Use the C<RequestToken> with GetResourceRequestStatus
(https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html)
to return the current status of a resource operation request.


=head2 ResourceModel => Str

A JSON string containing the resource model, consisting of each
resource property and its current value.


=head2 RetryAfter => Str

When to next request the status of this resource operation request.


=head2 StatusMessage => Str

Any message explaining the current status.


=head2 TypeName => Str

The name of the resource type used in the operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudControl>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

