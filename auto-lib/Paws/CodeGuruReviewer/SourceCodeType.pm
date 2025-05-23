# Generated by default/object.tt
package Paws::CodeGuruReviewer::SourceCodeType;
  use Moose;
  has BranchDiff => (is => 'ro', isa => 'Paws::CodeGuruReviewer::BranchDiffSourceCodeType');
  has CommitDiff => (is => 'ro', isa => 'Paws::CodeGuruReviewer::CommitDiffSourceCodeType');
  has RepositoryHead => (is => 'ro', isa => 'Paws::CodeGuruReviewer::RepositoryHeadSourceCodeType');
  has RequestMetadata => (is => 'ro', isa => 'Paws::CodeGuruReviewer::RequestMetadata');
  has S3BucketRepository => (is => 'ro', isa => 'Paws::CodeGuruReviewer::S3BucketRepository');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::SourceCodeType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeGuruReviewer::SourceCodeType object:

  $service_obj->Method(Att1 => { BranchDiff => $value, ..., S3BucketRepository => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeGuruReviewer::SourceCodeType object:

  $result = $service_obj->Method(...);
  $result->Att1->BranchDiff

=head1 DESCRIPTION

Specifies the source code that is analyzed in a code review.

=head1 ATTRIBUTES


=head2 BranchDiff => L<Paws::CodeGuruReviewer::BranchDiffSourceCodeType>

A type of SourceCodeType
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType)
that specifies a source branch name and a destination branch name in an
associated repository.


=head2 CommitDiff => L<Paws::CodeGuruReviewer::CommitDiffSourceCodeType>

A SourceCodeType
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType)
that specifies a commit diff created by a pull request on an associated
repository.


=head2 RepositoryHead => L<Paws::CodeGuruReviewer::RepositoryHeadSourceCodeType>




=head2 RequestMetadata => L<Paws::CodeGuruReviewer::RequestMetadata>

Metadata that is associated with a code review. This applies to any
type of code review supported by CodeGuru Reviewer. The
C<RequestMetadaa> field captures any event metadata. For example, it
might capture metadata associated with an event trigger, such as a push
or a pull request.


=head2 S3BucketRepository => L<Paws::CodeGuruReviewer::S3BucketRepository>

Information about an associated repository in an S3 bucket that
includes its name and an C<S3RepositoryDetails> object. The
C<S3RepositoryDetails> object includes the name of an S3 bucket, an S3
key for a source code .zip file, and an S3 key for a build artifacts
.zip file. C<S3BucketRepository> is required in SourceCodeType
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType)
for C<S3BucketRepository> based code reviews.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

