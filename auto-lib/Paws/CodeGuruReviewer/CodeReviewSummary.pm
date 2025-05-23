# Generated by default/object.tt
package Paws::CodeGuruReviewer::CodeReviewSummary;
  use Moose;
  has CodeReviewArn => (is => 'ro', isa => 'Str');
  has CreatedTimeStamp => (is => 'ro', isa => 'Str');
  has LastUpdatedTimeStamp => (is => 'ro', isa => 'Str');
  has MetricsSummary => (is => 'ro', isa => 'Paws::CodeGuruReviewer::MetricsSummary');
  has Name => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has ProviderType => (is => 'ro', isa => 'Str');
  has PullRequestId => (is => 'ro', isa => 'Str');
  has RepositoryName => (is => 'ro', isa => 'Str');
  has SourceCodeType => (is => 'ro', isa => 'Paws::CodeGuruReviewer::SourceCodeType');
  has State => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::CodeReviewSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeGuruReviewer::CodeReviewSummary object:

  $service_obj->Method(Att1 => { CodeReviewArn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeGuruReviewer::CodeReviewSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CodeReviewArn

=head1 DESCRIPTION

Information about the summary of the code review.

=head1 ATTRIBUTES


=head2 CodeReviewArn => Str

The Amazon Resource Name (ARN) of the CodeReview
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html)
object.


=head2 CreatedTimeStamp => Str

The time, in milliseconds since the epoch, when the code review was
created.


=head2 LastUpdatedTimeStamp => Str

The time, in milliseconds since the epoch, when the code review was
last updated.


=head2 MetricsSummary => L<Paws::CodeGuruReviewer::MetricsSummary>

The statistics from the code review.


=head2 Name => Str

The name of the code review.


=head2 Owner => Str

The owner of the repository. For an Amazon Web Services CodeCommit
repository, this is the Amazon Web Services account ID of the account
that owns the repository. For a GitHub, GitHub Enterprise Server, or
Bitbucket repository, this is the username for the account that owns
the repository. For an S3 repository, it can be the username or Amazon
Web Services account ID.


=head2 ProviderType => Str

The provider type of the repository association.


=head2 PullRequestId => Str

The pull request ID for the code review.


=head2 RepositoryName => Str

The name of the repository.


=head2 SourceCodeType => L<Paws::CodeGuruReviewer::SourceCodeType>




=head2 State => Str

The state of the code review.

The valid code review states are:

=over

=item *

C<Completed>: The code review is complete.

=item *

C<Pending>: The code review started and has not completed or failed.

=item *

C<Failed>: The code review failed.

=item *

C<Deleting>: The code review is being deleted.

=back



=head2 Type => Str

The type of the code review.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

