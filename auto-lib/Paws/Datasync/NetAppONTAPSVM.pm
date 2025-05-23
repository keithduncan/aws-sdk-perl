# Generated by default/object.tt
package Paws::Datasync::NetAppONTAPSVM;
  use Moose;
  has CifsShareCount => (is => 'ro', isa => 'Int');
  has ClusterUuid => (is => 'ro', isa => 'Str');
  has EnabledProtocols => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LunCount => (is => 'ro', isa => 'Int');
  has MaxP95Performance => (is => 'ro', isa => 'Paws::Datasync::MaxP95Performance');
  has NfsExportedVolumes => (is => 'ro', isa => 'Int');
  has Recommendations => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::Recommendation]');
  has RecommendationStatus => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has SvmName => (is => 'ro', isa => 'Str');
  has TotalCapacityProvisioned => (is => 'ro', isa => 'Int');
  has TotalCapacityUsed => (is => 'ro', isa => 'Int');
  has TotalLogicalCapacityUsed => (is => 'ro', isa => 'Int');
  has TotalSnapshotCapacityUsed => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::NetAppONTAPSVM

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::NetAppONTAPSVM object:

  $service_obj->Method(Att1 => { CifsShareCount => $value, ..., TotalSnapshotCapacityUsed => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::NetAppONTAPSVM object:

  $result = $service_obj->Method(...);
  $result->Att1->CifsShareCount

=head1 DESCRIPTION

The information that DataSync Discovery collects about a storage
virtual machine (SVM) in your on-premises storage system.

=head1 ATTRIBUTES


=head2 CifsShareCount => Int

The number of CIFS shares in the SVM.


=head2 ClusterUuid => Str

The universally unique identifier (UUID) of the cluster associated with
the SVM.


=head2 EnabledProtocols => ArrayRef[Str|Undef]

The data transfer protocols (such as NFS) configured for the SVM.


=head2 LunCount => Int

The number of LUNs (logical unit numbers) in the SVM.


=head2 MaxP95Performance => L<Paws::Datasync::MaxP95Performance>

The performance data that DataSync Discovery collects about the SVM.


=head2 NfsExportedVolumes => Int

The number of NFS volumes in the SVM.


=head2 Recommendations => ArrayRef[L<Paws::Datasync::Recommendation>]

The Amazon Web Services storage services that DataSync Discovery
recommends for the SVM. For more information, see Recommendations
provided by DataSync Discovery
(https://docs.aws.amazon.com/datasync/latest/userguide/discovery-understand-recommendations.html).


=head2 RecommendationStatus => Str

Indicates whether DataSync Discovery recommendations for the SVM are
ready to view, incomplete, or can't be determined.

For more information, see Recommendation statuses
(https://docs.aws.amazon.com/datasync/latest/userguide/discovery-job-statuses.html#recommendation-statuses-table).


=head2 ResourceId => Str

The UUID of the SVM.


=head2 SvmName => Str

The name of the SVM


=head2 TotalCapacityProvisioned => Int

The total storage space that's available in the SVM.


=head2 TotalCapacityUsed => Int

The storage space that's being used in the SVM.


=head2 TotalLogicalCapacityUsed => Int

The storage space that's being used in the SVM without accounting for
compression or deduplication.


=head2 TotalSnapshotCapacityUsed => Int

The amount of storage in the SVM that's being used for snapshots.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

