# Generated by default/object.tt
package Paws::Batch::FrontOfQueueDetail;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::Batch::FrontOfQueueJobSummary]', request_name => 'jobs', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Int', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::FrontOfQueueDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::FrontOfQueueDetail object:

  $service_obj->Method(Att1 => { Jobs => $value, ..., LastUpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::FrontOfQueueDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Jobs

=head1 DESCRIPTION

Contains a list of the first 100 C<RUNNABLE> jobs associated to a
single job queue.

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::Batch::FrontOfQueueJobSummary>]

The Amazon Resource Names (ARNs) of the first 100 C<RUNNABLE> jobs in a
named job queue. For first-in-first-out (FIFO) job queues, jobs are
ordered based on their submission time. For fair-share scheduling (FSS)
job queues, jobs are ordered based on their job priority and share
usage.


=head2 LastUpdatedAt => Int

The Unix timestamp (in milliseconds) for when each of the first 100
C<RUNNABLE> jobs were last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

