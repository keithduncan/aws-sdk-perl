# Generated by default/object.tt
package Paws::S3Control::DeleteMarkerReplication;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::DeleteMarkerReplication

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::DeleteMarkerReplication object:

  $service_obj->Method(Att1 => { Status => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::DeleteMarkerReplication object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

Specifies whether S3 on Outposts replicates delete markers. If you
specify a C<Filter> element in your replication configuration, you must
also include a C<DeleteMarkerReplication> element. If your C<Filter>
includes a C<Tag> element, the C<DeleteMarkerReplication> element's
C<Status> child element must be set to C<Disabled>, because S3 on
Outposts does not support replicating delete markers for tag-based
rules.

For more information about delete marker replication, see How delete
operations affect replication
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html#outposts-replication-what-is-replicated)
in the I<Amazon S3 User Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

Indicates whether to replicate delete markers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

