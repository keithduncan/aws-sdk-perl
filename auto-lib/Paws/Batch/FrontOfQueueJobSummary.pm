# Generated by default/object.tt
package Paws::Batch::FrontOfQueueJobSummary;
  use Moose;
  has EarliestTimeAtPosition => (is => 'ro', isa => 'Int', request_name => 'earliestTimeAtPosition', traits => ['NameInRequest']);
  has JobArn => (is => 'ro', isa => 'Str', request_name => 'jobArn', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::FrontOfQueueJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::FrontOfQueueJobSummary object:

  $service_obj->Method(Att1 => { EarliestTimeAtPosition => $value, ..., JobArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::FrontOfQueueJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->EarliestTimeAtPosition

=head1 DESCRIPTION

An object that represents summary details for the first 100 C<RUNNABLE>
jobs in a job queue.

=head1 ATTRIBUTES


=head2 EarliestTimeAtPosition => Int

The Unix timestamp (in milliseconds) for when the job transitioned to
its current position in the job queue.


=head2 JobArn => Str

The ARN for a job in a named job queue.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

