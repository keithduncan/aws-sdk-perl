# Generated by default/object.tt
package Paws::Connect::QueueInfo;
  use Moose;
  has EnqueueTimestamp => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::QueueInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::QueueInfo object:

  $service_obj->Method(Att1 => { EnqueueTimestamp => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::QueueInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->EnqueueTimestamp

=head1 DESCRIPTION

If this contact was queued, this contains information about the queue.

=head1 ATTRIBUTES


=head2 EnqueueTimestamp => Str

The timestamp when the contact was added to the queue.


=head2 Id => Str

The unique identifier for the queue.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

