# Generated by default/object.tt
package Paws::FIS::ExperimentTemplate;
  use Moose;
  has Actions => (is => 'ro', isa => 'Paws::FIS::ExperimentTemplateActionMap', request_name => 'actions', traits => ['NameInRequest']);
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has ExperimentOptions => (is => 'ro', isa => 'Paws::FIS::ExperimentTemplateExperimentOptions', request_name => 'experimentOptions', traits => ['NameInRequest']);
  has ExperimentReportConfiguration => (is => 'ro', isa => 'Paws::FIS::ExperimentTemplateReportConfiguration', request_name => 'experimentReportConfiguration', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has LastUpdateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdateTime', traits => ['NameInRequest']);
  has LogConfiguration => (is => 'ro', isa => 'Paws::FIS::ExperimentTemplateLogConfiguration', request_name => 'logConfiguration', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
  has StopConditions => (is => 'ro', isa => 'ArrayRef[Paws::FIS::ExperimentTemplateStopCondition]', request_name => 'stopConditions', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::FIS::TagMap', request_name => 'tags', traits => ['NameInRequest']);
  has TargetAccountConfigurationsCount => (is => 'ro', isa => 'Int', request_name => 'targetAccountConfigurationsCount', traits => ['NameInRequest']);
  has Targets => (is => 'ro', isa => 'Paws::FIS::ExperimentTemplateTargetMap', request_name => 'targets', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::ExperimentTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FIS::ExperimentTemplate object:

  $service_obj->Method(Att1 => { Actions => $value, ..., Targets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FIS::ExperimentTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Describes an experiment template.

=head1 ATTRIBUTES


=head2 Actions => L<Paws::FIS::ExperimentTemplateActionMap>

The actions for the experiment.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the experiment template.


=head2 CreationTime => Str

The time the experiment template was created.


=head2 Description => Str

The description for the experiment template.


=head2 ExperimentOptions => L<Paws::FIS::ExperimentTemplateExperimentOptions>

The experiment options for an experiment template.


=head2 ExperimentReportConfiguration => L<Paws::FIS::ExperimentTemplateReportConfiguration>

Describes the report configuration for the experiment template.


=head2 Id => Str

The ID of the experiment template.


=head2 LastUpdateTime => Str

The time the experiment template was last updated.


=head2 LogConfiguration => L<Paws::FIS::ExperimentTemplateLogConfiguration>

The configuration for experiment logging.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role.


=head2 StopConditions => ArrayRef[L<Paws::FIS::ExperimentTemplateStopCondition>]

The stop conditions for the experiment.


=head2 Tags => L<Paws::FIS::TagMap>

The tags for the experiment template.


=head2 TargetAccountConfigurationsCount => Int

The count of target account configurations for the experiment template.


=head2 Targets => L<Paws::FIS::ExperimentTemplateTargetMap>

The targets for the experiment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

