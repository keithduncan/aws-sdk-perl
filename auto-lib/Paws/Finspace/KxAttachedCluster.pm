# Generated by default/object.tt
package Paws::Finspace::KxAttachedCluster;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', request_name => 'clusterName', traits => ['NameInRequest']);
  has ClusterStatus => (is => 'ro', isa => 'Str', request_name => 'clusterStatus', traits => ['NameInRequest']);
  has ClusterType => (is => 'ro', isa => 'Str', request_name => 'clusterType', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::KxAttachedCluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Finspace::KxAttachedCluster object:

  $service_obj->Method(Att1 => { ClusterName => $value, ..., ClusterType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Finspace::KxAttachedCluster object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterName

=head1 DESCRIPTION

The structure containing the metadata of the attached clusters.

=head1 ATTRIBUTES


=head2 ClusterName => Str

A unique name for the attached cluster.


=head2 ClusterStatus => Str

The status of the attached cluster.

=over

=item *

PENDING E<ndash> The cluster is pending creation.

=item *

CREATING E<ndash> The cluster creation process is in progress.

=item *

CREATE_FAILED E<ndash> The cluster creation process has failed.

=item *

RUNNING E<ndash> The cluster creation process is running.

=item *

UPDATING E<ndash> The cluster is in the process of being updated.

=item *

DELETING E<ndash> The cluster is in the process of being deleted.

=item *

DELETED E<ndash> The cluster has been deleted.

=item *

DELETE_FAILED E<ndash> The cluster failed to delete.

=back



=head2 ClusterType => Str

Specifies the type of cluster. The volume for TP and RDB cluster types
will be used for TP logs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

