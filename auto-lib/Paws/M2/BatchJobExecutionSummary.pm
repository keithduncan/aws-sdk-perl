# Generated by default/object.tt
package Paws::M2::BatchJobExecutionSummary;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', request_name => 'applicationId', traits => ['NameInRequest'], required => 1);
  has BatchJobIdentifier => (is => 'ro', isa => 'Paws::M2::BatchJobIdentifier', request_name => 'batchJobIdentifier', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has ExecutionId => (is => 'ro', isa => 'Str', request_name => 'executionId', traits => ['NameInRequest'], required => 1);
  has JobId => (is => 'ro', isa => 'Str', request_name => 'jobId', traits => ['NameInRequest']);
  has JobName => (is => 'ro', isa => 'Str', request_name => 'jobName', traits => ['NameInRequest']);
  has JobType => (is => 'ro', isa => 'Str', request_name => 'jobType', traits => ['NameInRequest']);
  has ReturnCode => (is => 'ro', isa => 'Str', request_name => 'returnCode', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::BatchJobExecutionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::M2::BatchJobExecutionSummary object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::M2::BatchJobExecutionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

A subset of the possible batch job attributes. Used in the batch job
list.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the application that hosts this batch job.


=head2 BatchJobIdentifier => L<Paws::M2::BatchJobIdentifier>

The unique identifier of this batch job.


=head2 EndTime => Str

The timestamp when this batch job execution ended.


=head2 B<REQUIRED> ExecutionId => Str

The unique identifier of this execution of the batch job.


=head2 JobId => Str

The unique identifier of a particular batch job.


=head2 JobName => Str

The name of a particular batch job.


=head2 JobType => Str

The type of a particular batch job execution.


=head2 ReturnCode => Str

The batch job return code from either the Blu Age or Micro Focus
runtime engines. For more information, see Batch return codes
(https://www.ibm.com/docs/en/was/8.5.5?topic=model-batch-return-codes)
in the I<IBM WebSphere Application Server> documentation.


=head2 B<REQUIRED> StartTime => Str

The timestamp when a particular batch job execution started.


=head2 B<REQUIRED> Status => Str

The status of a particular batch job execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

