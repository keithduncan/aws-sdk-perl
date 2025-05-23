
package Paws::IoTJobsData::DescribeJobExecution;
  use Moose;
  has ExecutionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'executionNumber');
  has IncludeJobDocument => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeJobDocument');
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJobExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTJobsData::DescribeJobExecutionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::DescribeJobExecution - Arguments for method DescribeJobExecution on L<Paws::IoTJobsData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeJobExecution on the
L<AWS IoT Jobs Data Plane|Paws::IoTJobsData> service. Use the attributes of this class
as arguments to method DescribeJobExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeJobExecution.

=head1 SYNOPSIS

    my $data.jobs.iot = Paws->service('IoTJobsData');
    my $DescribeJobExecutionResponse = $data . jobs . iot->DescribeJobExecution(
      JobId              => 'MyDescribeJobExecutionJobId',
      ThingName          => 'MyThingName',
      ExecutionNumber    => 1,                               # OPTIONAL
      IncludeJobDocument => 1,                               # OPTIONAL
    );

    # Results:
    my $Execution = $DescribeJobExecutionResponse->Execution;

    # Returns a L<Paws::IoTJobsData::DescribeJobExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.jobs.iot/DescribeJobExecution>

=head1 ATTRIBUTES


=head2 ExecutionNumber => Int

Optional. A number that identifies a particular job execution on a
particular device. If not specified, the latest job execution is
returned.



=head2 IncludeJobDocument => Bool

Optional. Unless set to false, the response contains the job document.
The default is true.



=head2 B<REQUIRED> JobId => Str

The unique identifier assigned to this job when it was created.



=head2 B<REQUIRED> ThingName => Str

The thing name associated with the device the job execution is running
on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeJobExecution in L<Paws::IoTJobsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

