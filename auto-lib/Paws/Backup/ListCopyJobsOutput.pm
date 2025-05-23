
package Paws::Backup::ListCopyJobsOutput;
  use Moose;
  has CopyJobs => (is => 'ro', isa => 'ArrayRef[Paws::Backup::CopyJob]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListCopyJobsOutput

=head1 ATTRIBUTES


=head2 CopyJobs => ArrayRef[L<Paws::Backup::CopyJob>]

An array of structures containing metadata about your copy jobs
returned in JSON format.


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return MaxResults number of items, NextToken
allows you to return more items in your list starting at the location
pointed to by the next token.


=head2 _request_id => Str


=cut

