
package Paws::Glue::CreateTrigger;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Action]', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EventBatchingCondition => (is => 'ro', isa => 'Paws::Glue::EventBatchingCondition');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Predicate => (is => 'ro', isa => 'Paws::Glue::Predicate');
  has Schedule => (is => 'ro', isa => 'Str');
  has StartOnCreation => (is => 'ro', isa => 'Bool');
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has WorkflowName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrigger');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateTriggerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateTrigger - Arguments for method CreateTrigger on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrigger on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateTrigger.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrigger.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateTriggerResponse = $glue->CreateTrigger(
      Actions => [
        {
          Arguments => { 'MyGenericString' => 'MyGenericString', },   # OPTIONAL
          CrawlerName          => 'MyNameString',   # min: 1, max: 255; OPTIONAL
          JobName              => 'MyNameString',   # min: 1, max: 255; OPTIONAL
          NotificationProperty => {
            NotifyDelayAfter => 1,                  # min: 1; OPTIONAL
          },    # OPTIONAL
          SecurityConfiguration => 'MyNameString',  # min: 1, max: 255; OPTIONAL
          Timeout               => 1,               # min: 1; OPTIONAL
        },
        ...
      ],
      Name                   => 'MyNameString',
      Type                   => 'SCHEDULED',
      Description            => 'MyDescriptionString',    # OPTIONAL
      EventBatchingCondition => {
        BatchSize   => 1,    # min: 1, max: 100
        BatchWindow => 1,    # min: 1, max: 900; OPTIONAL
      },    # OPTIONAL
      Predicate => {
        Conditions => [
          {
            CrawlState => 'RUNNING'
            , # values: RUNNING, CANCELLING, CANCELLED, SUCCEEDED, FAILED, ERROR; OPTIONAL
            CrawlerName     => 'MyNameString',    # min: 1, max: 255; OPTIONAL
            JobName         => 'MyNameString',    # min: 1, max: 255; OPTIONAL
            LogicalOperator => 'EQUALS',          # values: EQUALS; OPTIONAL
            State           => 'STARTING'
            , # values: STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT, ERROR, WAITING, EXPIRED; OPTIONAL
          },
          ...
        ],    # max: 500; OPTIONAL
        Logical => 'AND',    # values: AND, ANY; OPTIONAL
      },    # OPTIONAL
      Schedule        => 'MyGenericString',    # OPTIONAL
      StartOnCreation => 1,                    # OPTIONAL
      Tags            => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      WorkflowName => 'MyNameString',    # OPTIONAL
    );

    # Results:
    my $Name = $CreateTriggerResponse->Name;

    # Returns a L<Paws::Glue::CreateTriggerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateTrigger>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[L<Paws::Glue::Action>]

The actions initiated by this trigger when it fires.



=head2 Description => Str

A description of the new trigger.



=head2 EventBatchingCondition => L<Paws::Glue::EventBatchingCondition>

Batch condition that must be met (specified number of events received
or batch time window expired) before EventBridge event trigger fires.



=head2 B<REQUIRED> Name => Str

The name of the trigger.



=head2 Predicate => L<Paws::Glue::Predicate>

A predicate to specify when the new trigger should fire.

This field is required when the trigger type is C<CONDITIONAL>.



=head2 Schedule => Str

A C<cron> expression used to specify the schedule (see Time-Based
Schedules for Jobs and Crawlers
(https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html).
For example, to run something every day at 12:15 UTC, you would
specify: C<cron(15 12 * * ? *)>.

This field is required when the trigger type is SCHEDULED.



=head2 StartOnCreation => Bool

Set to C<true> to start C<SCHEDULED> and C<CONDITIONAL> triggers when
created. True is not supported for C<ON_DEMAND> triggers.



=head2 Tags => L<Paws::Glue::TagsMap>

The tags to use with this trigger. You may use tags to limit access to
the trigger. For more information about tags in Glue, see Amazon Web
Services Tags in Glue
(https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html) in the
developer guide.



=head2 B<REQUIRED> Type => Str

The type of the new trigger.

Valid values are: C<"SCHEDULED">, C<"CONDITIONAL">, C<"ON_DEMAND">, C<"EVENT">

=head2 WorkflowName => Str

The name of the workflow associated with the trigger.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrigger in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

