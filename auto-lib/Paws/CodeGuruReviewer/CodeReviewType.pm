# Generated by default/object.tt
package Paws::CodeGuruReviewer::CodeReviewType;
  use Moose;
  has AnalysisTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RepositoryAnalysis => (is => 'ro', isa => 'Paws::CodeGuruReviewer::RepositoryAnalysis', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::CodeReviewType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeGuruReviewer::CodeReviewType object:

  $service_obj->Method(Att1 => { AnalysisTypes => $value, ..., RepositoryAnalysis => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeGuruReviewer::CodeReviewType object:

  $result = $service_obj->Method(...);
  $result->Att1->AnalysisTypes

=head1 DESCRIPTION

The type of a code review. There are two code review types:

=over

=item *

C<PullRequest> - A code review that is automatically triggered by a
pull request on an associated repository.

=item *

C<RepositoryAnalysis> - A code review that analyzes all code under a
specified branch in an associated repository. The associated repository
is specified using its ARN in CreateCodeReview
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CreateCodeReview).

=back


=head1 ATTRIBUTES


=head2 AnalysisTypes => ArrayRef[Str|Undef]

They types of analysis performed during a repository analysis or a pull
request review. You can specify either C<Security>, C<CodeQuality>, or
both.


=head2 B<REQUIRED> RepositoryAnalysis => L<Paws::CodeGuruReviewer::RepositoryAnalysis>

A code review that analyzes all code under a specified branch in an
associated repository. The associated repository is specified using its
ARN in CreateCodeReview
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CreateCodeReview).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

