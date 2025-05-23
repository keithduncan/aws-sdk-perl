# Generated by default/object.tt
package Paws::Athena::QueryRuntimeStatisticsTimeline;
  use Moose;
  has EngineExecutionTimeInMillis => (is => 'ro', isa => 'Int');
  has QueryPlanningTimeInMillis => (is => 'ro', isa => 'Int');
  has QueryQueueTimeInMillis => (is => 'ro', isa => 'Int');
  has ServicePreProcessingTimeInMillis => (is => 'ro', isa => 'Int');
  has ServiceProcessingTimeInMillis => (is => 'ro', isa => 'Int');
  has TotalExecutionTimeInMillis => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::QueryRuntimeStatisticsTimeline

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::QueryRuntimeStatisticsTimeline object:

  $service_obj->Method(Att1 => { EngineExecutionTimeInMillis => $value, ..., TotalExecutionTimeInMillis => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::QueryRuntimeStatisticsTimeline object:

  $result = $service_obj->Method(...);
  $result->Att1->EngineExecutionTimeInMillis

=head1 DESCRIPTION

Timeline statistics such as query queue time, planning time, execution
time, service processing time, and total execution time.

=head1 ATTRIBUTES


=head2 EngineExecutionTimeInMillis => Int

The number of milliseconds that the query took to execute.


=head2 QueryPlanningTimeInMillis => Int

The number of milliseconds that Athena took to plan the query
processing flow. This includes the time spent retrieving table
partitions from the data source. Note that because the query engine
performs the query planning, query planning time is a subset of engine
processing time.


=head2 QueryQueueTimeInMillis => Int

The number of milliseconds that the query was in your query queue
waiting for resources. Note that if transient errors occur, Athena
might automatically add the query back to the queue.


=head2 ServicePreProcessingTimeInMillis => Int

The number of milliseconds that Athena spends on preprocessing before
it submits the query to the engine.


=head2 ServiceProcessingTimeInMillis => Int

The number of milliseconds that Athena took to finalize and publish the
query results after the query engine finished running the query.


=head2 TotalExecutionTimeInMillis => Int

The number of milliseconds that Athena took to run the query.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

