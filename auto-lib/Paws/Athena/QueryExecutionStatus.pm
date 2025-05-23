# Generated by default/object.tt
package Paws::Athena::QueryExecutionStatus;
  use Moose;
  has AthenaError => (is => 'ro', isa => 'Paws::Athena::AthenaError');
  has CompletionDateTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Str');
  has SubmissionDateTime => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::QueryExecutionStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::QueryExecutionStatus object:

  $service_obj->Method(Att1 => { AthenaError => $value, ..., SubmissionDateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::QueryExecutionStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->AthenaError

=head1 DESCRIPTION

The completion date, current state, submission time, and state change
reason (if applicable) for the query execution.

=head1 ATTRIBUTES


=head2 AthenaError => L<Paws::Athena::AthenaError>

Provides information about an Athena query error.


=head2 CompletionDateTime => Str

The date and time that the query completed.


=head2 State => Str

The state of query execution. C<QUEUED> indicates that the query has
been submitted to the service, and Athena will execute the query as
soon as resources are available. C<RUNNING> indicates that the query is
in execution phase. C<SUCCEEDED> indicates that the query completed
without errors. C<FAILED> indicates that the query experienced an error
and did not complete processing. C<CANCELLED> indicates that a user
input interrupted query execution.

Athena automatically retries your queries in cases of certain transient
errors. As a result, you may see the query state transition from
C<RUNNING> or C<FAILED> to C<QUEUED>.


=head2 StateChangeReason => Str

Further detail about the status of the query.


=head2 SubmissionDateTime => Str

The date and time that the query was submitted.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

