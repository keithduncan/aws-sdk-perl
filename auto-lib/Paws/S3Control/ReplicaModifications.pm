# Generated by default/object.tt
package Paws::S3Control::ReplicaModifications;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ReplicaModifications

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::ReplicaModifications object:

  $service_obj->Method(Att1 => { Status => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::ReplicaModifications object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

A filter that you can use to specify whether replica modification sync
is enabled. S3 on Outposts replica modification sync can help you keep
object metadata synchronized between replicas and source objects. By
default, S3 on Outposts replicates metadata from the source objects to
the replicas only. When replica modification sync is enabled, S3 on
Outposts replicates metadata changes made to the replica copies back to
the source object, making the replication bidirectional.

To replicate object metadata modifications on replicas, you can specify
this element and set the C<Status> of this element to C<Enabled>.

You must enable replica modification sync on the source and destination
buckets to replicate replica metadata changes between the source and
the replicas.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

Specifies whether S3 on Outposts replicates modifications to object
metadata on replicas.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

