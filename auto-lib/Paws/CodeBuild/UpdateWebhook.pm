
package Paws::CodeBuild::UpdateWebhook;
  use Moose;
  has BranchFilter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'branchFilter' );
  has BuildType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'buildType' );
  has FilterGroups => (is => 'ro', isa => 'ArrayRef[ArrayRef[Paws::CodeBuild::WebhookFilter]]', traits => ['NameInRequest'], request_name => 'filterGroups' );
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName' , required => 1);
  has RotateSecret => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'rotateSecret' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWebhook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::UpdateWebhookOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::UpdateWebhook - Arguments for method UpdateWebhook on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWebhook on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method UpdateWebhook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWebhook.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $UpdateWebhookOutput = $codebuild->UpdateWebhook(
      ProjectName  => 'MyProjectName',
      BranchFilter => 'MyString',        # OPTIONAL
      BuildType    => 'BUILD',           # OPTIONAL
      FilterGroups => [
        [
          {
            Pattern => 'MyString',
            Type    => 'EVENT'
            , # values: EVENT, BASE_REF, HEAD_REF, ACTOR_ACCOUNT_ID, FILE_PATH, COMMIT_MESSAGE, WORKFLOW_NAME, TAG_NAME, RELEASE_NAME, REPOSITORY_NAME, ORGANIZATION_NAME
            ExcludeMatchedPattern => 1,    # OPTIONAL
          },
          ...
        ],
        ...
      ],    # OPTIONAL
      RotateSecret => 1,    # OPTIONAL
    );

    # Results:
    my $Webhook = $UpdateWebhookOutput->Webhook;

    # Returns a L<Paws::CodeBuild::UpdateWebhookOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/UpdateWebhook>

=head1 ATTRIBUTES


=head2 BranchFilter => Str

A regular expression used to determine which repository branches are
built when a webhook is triggered. If the name of a branch matches the
regular expression, then it is built. If C<branchFilter> is empty, then
all branches are built.

It is recommended that you use C<filterGroups> instead of
C<branchFilter>.



=head2 BuildType => Str

Specifies the type of build this webhook will trigger.

C<RUNNER_BUILDKITE_BUILD> is only available for C<NO_SOURCE> source
type projects configured for Buildkite runner builds. For more
information about CodeBuild-hosted Buildkite runner builds, see
Tutorial: Configure a CodeBuild-hosted Buildkite runner
(https://docs.aws.amazon.com/codebuild/latest/userguide/sample-runner-buildkite.html)
in the I<CodeBuild user guide>.

Valid values are: C<"BUILD">, C<"BUILD_BATCH">, C<"RUNNER_BUILDKITE_BUILD">

=head2 FilterGroups => ArrayRef[L<ArrayRef[Paws::CodeBuild::WebhookFilter]>]

An array of arrays of C<WebhookFilter> objects used to determine if a
webhook event can trigger a build. A filter group must contain at least
one C<EVENT> C<WebhookFilter>.



=head2 B<REQUIRED> ProjectName => Str

The name of the CodeBuild project.



=head2 RotateSecret => Bool

A boolean value that specifies whether the associated GitHub
repository's secret token should be updated. If you use Bitbucket for
your repository, C<rotateSecret> is ignored.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWebhook in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

