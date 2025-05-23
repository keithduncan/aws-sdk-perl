# Generated by default/object.tt
package Paws::CodeGuruReviewer::MetricsSummary;
  use Moose;
  has FindingsCount => (is => 'ro', isa => 'Int');
  has MeteredLinesOfCodeCount => (is => 'ro', isa => 'Int');
  has SuppressedLinesOfCodeCount => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::MetricsSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeGuruReviewer::MetricsSummary object:

  $service_obj->Method(Att1 => { FindingsCount => $value, ..., SuppressedLinesOfCodeCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeGuruReviewer::MetricsSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->FindingsCount

=head1 DESCRIPTION

Information about metrics summaries.

=head1 ATTRIBUTES


=head2 FindingsCount => Int

Total number of recommendations found in the code review.


=head2 MeteredLinesOfCodeCount => Int

Lines of code metered in the code review. For the initial code review
pull request and all subsequent revisions, this includes all lines of
code in the files added to the pull request. In subsequent revisions,
for files that already existed in the pull request, this includes only
the changed lines of code. In both cases, this does not include
non-code lines such as comments and import statements. For example, if
you submit a pull request containing 5 files, each with 500 lines of
code, and in a subsequent revision you added a new file with 200 lines
of code, and also modified a total of 25 lines across the initial 5
files, C<MeteredLinesOfCodeCount> includes the first 5 files (5 * 500 =
2,500 lines), the new file (200 lines) and the 25 changed lines of code
for a total of 2,725 lines of code.


=head2 SuppressedLinesOfCodeCount => Int

Lines of code suppressed in the code review based on the
C<excludeFiles> element in the C<aws-codeguru-reviewer.yml> file. For
full repository analyses, this number includes all lines of code in the
files that are suppressed. For pull requests, this number only includes
the I<changed> lines of code that are suppressed. In both cases, this
number does not include non-code lines such as comments and import
statements. For example, if you initiate a full repository analysis on
a repository containing 5 files, each file with 100 lines of code, and
2 files are listed as excluded in the C<aws-codeguru-reviewer.yml>
file, then C<SuppressedLinesOfCodeCount> returns 200 (2 * 100) as the
total number of lines of code suppressed. However, if you submit a pull
request for the same repository, then C<SuppressedLinesOfCodeCount>
only includes the lines in the 2 files that changed. If only 1 of the 2
files changed in the pull request, then C<SuppressedLinesOfCodeCount>
returns 100 (1 * 100) as the total number of lines of code suppressed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

