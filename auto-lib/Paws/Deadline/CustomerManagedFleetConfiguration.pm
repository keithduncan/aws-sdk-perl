# Generated by default/object.tt
package Paws::Deadline::CustomerManagedFleetConfiguration;
  use Moose;
  has Mode => (is => 'ro', isa => 'Str', request_name => 'mode', traits => ['NameInRequest'], required => 1);
  has StorageProfileId => (is => 'ro', isa => 'Str', request_name => 'storageProfileId', traits => ['NameInRequest']);
  has TagPropagationMode => (is => 'ro', isa => 'Str', request_name => 'tagPropagationMode', traits => ['NameInRequest']);
  has WorkerCapabilities => (is => 'ro', isa => 'Paws::Deadline::CustomerManagedWorkerCapabilities', request_name => 'workerCapabilities', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CustomerManagedFleetConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Deadline::CustomerManagedFleetConfiguration object:

  $service_obj->Method(Att1 => { Mode => $value, ..., WorkerCapabilities => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Deadline::CustomerManagedFleetConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Mode

=head1 DESCRIPTION

The details of a customer managed fleet configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Mode => Str

The Auto Scaling mode for the customer managed fleet configuration.


=head2 StorageProfileId => Str

The storage profile ID.


=head2 TagPropagationMode => Str

Specifies whether tags associated with a fleet are attached to workers
when the worker is launched.

When the C<tagPropagationMode> is set to
C<PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH> any tag associated with a fleet
is attached to workers when they launch. If the tags for a fleet
change, the tags associated with running workers B<do not> change.

If you don't specify C<tagPropagationMode>, the default is
C<NO_PROPAGATION>.


=head2 B<REQUIRED> WorkerCapabilities => L<Paws::Deadline::CustomerManagedWorkerCapabilities>

The worker capabilities for a customer managed fleet configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

