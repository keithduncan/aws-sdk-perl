# Generated by default/object.tt
package Paws::CodePipeline::PipelineDeclaration;
  use Moose;
  has ArtifactStore => (is => 'ro', isa => 'Paws::CodePipeline::ArtifactStore', request_name => 'artifactStore', traits => ['NameInRequest']);
  has ArtifactStores => (is => 'ro', isa => 'Paws::CodePipeline::ArtifactStoreMap', request_name => 'artifactStores', traits => ['NameInRequest']);
  has ExecutionMode => (is => 'ro', isa => 'Str', request_name => 'executionMode', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has PipelineType => (is => 'ro', isa => 'Str', request_name => 'pipelineType', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
  has Stages => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::StageDeclaration]', request_name => 'stages', traits => ['NameInRequest'], required => 1);
  has Triggers => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::PipelineTriggerDeclaration]', request_name => 'triggers', traits => ['NameInRequest']);
  has Variables => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::PipelineVariableDeclaration]', request_name => 'variables', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Int', request_name => 'version', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PipelineDeclaration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::PipelineDeclaration object:

  $service_obj->Method(Att1 => { ArtifactStore => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::PipelineDeclaration object:

  $result = $service_obj->Method(...);
  $result->Att1->ArtifactStore

=head1 DESCRIPTION

Represents the structure of actions and stages to be performed in the
pipeline.

=head1 ATTRIBUTES


=head2 ArtifactStore => L<Paws::CodePipeline::ArtifactStore>

Represents information about the S3 bucket where artifacts are stored
for the pipeline.

You must include either C<artifactStore> or C<artifactStores> in your
pipeline, but you cannot use both. If you create a cross-region action
in your pipeline, you must use C<artifactStores>.


=head2 ArtifactStores => L<Paws::CodePipeline::ArtifactStoreMap>

A mapping of C<artifactStore> objects and their corresponding Amazon
Web Services Regions. There must be an artifact store for the pipeline
Region and for each cross-region action in the pipeline.

You must include either C<artifactStore> or C<artifactStores> in your
pipeline, but you cannot use both. If you create a cross-region action
in your pipeline, you must use C<artifactStores>.


=head2 ExecutionMode => Str

The method that the pipeline will use to handle multiple executions.
The default mode is SUPERSEDED.


=head2 B<REQUIRED> Name => Str

The name of the pipeline.


=head2 PipelineType => Str

CodePipeline provides the following pipeline types, which differ in
characteristics and price, so that you can tailor your pipeline
features and cost to the needs of your applications.

=over

=item *

V1 type pipelines have a JSON structure that contains standard
pipeline, stage, and action-level parameters.

=item *

V2 type pipelines have the same structure as a V1 type, along with
additional parameters for release safety and trigger configuration.

=back

Including V2 parameters, such as triggers on Git tags, in the pipeline
JSON when creating or updating a pipeline will result in the pipeline
having the V2 type of pipeline and the associated costs.

For information about pricing for CodePipeline, see Pricing
(http://aws.amazon.com/codepipeline/pricing/).

For information about which type of pipeline to choose, see What type
of pipeline is right for me?
(https://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-types-planning.html).


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) for CodePipeline to use to either
perform actions with no C<actionRoleArn>, or to use to assume roles for
actions with an C<actionRoleArn>.


=head2 B<REQUIRED> Stages => ArrayRef[L<Paws::CodePipeline::StageDeclaration>]

The stage in which to perform the action.


=head2 Triggers => ArrayRef[L<Paws::CodePipeline::PipelineTriggerDeclaration>]

The trigger configuration specifying a type of event, such as Git tags,
that starts the pipeline.

When a trigger configuration is specified, default change detection for
repository and branch commits is disabled.


=head2 Variables => ArrayRef[L<Paws::CodePipeline::PipelineVariableDeclaration>]

A list that defines the pipeline variables for a pipeline resource.
Variable names can have alphanumeric and underscore characters, and the
values must match C<[A-Za-z0-9@\-_]+>.


=head2 Version => Int

The version number of the pipeline. A new pipeline always has a version
number of 1. This number is incremented when a pipeline is updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

