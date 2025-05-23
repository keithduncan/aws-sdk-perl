
package Paws::CodeBuild::StartBuild;
  use Moose;
  has ArtifactsOverride => (is => 'ro', isa => 'Paws::CodeBuild::ProjectArtifacts', traits => ['NameInRequest'], request_name => 'artifactsOverride' );
  has AutoRetryLimitOverride => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'autoRetryLimitOverride' );
  has BuildspecOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'buildspecOverride' );
  has BuildStatusConfigOverride => (is => 'ro', isa => 'Paws::CodeBuild::BuildStatusConfig', traits => ['NameInRequest'], request_name => 'buildStatusConfigOverride' );
  has CacheOverride => (is => 'ro', isa => 'Paws::CodeBuild::ProjectCache', traits => ['NameInRequest'], request_name => 'cacheOverride' );
  has CertificateOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateOverride' );
  has ComputeTypeOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'computeTypeOverride' );
  has DebugSessionEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'debugSessionEnabled' );
  has EncryptionKeyOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionKeyOverride' );
  has EnvironmentTypeOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentTypeOverride' );
  has EnvironmentVariablesOverride => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::EnvironmentVariable]', traits => ['NameInRequest'], request_name => 'environmentVariablesOverride' );
  has FleetOverride => (is => 'ro', isa => 'Paws::CodeBuild::ProjectFleet', traits => ['NameInRequest'], request_name => 'fleetOverride' );
  has GitCloneDepthOverride => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'gitCloneDepthOverride' );
  has GitSubmodulesConfigOverride => (is => 'ro', isa => 'Paws::CodeBuild::GitSubmodulesConfig', traits => ['NameInRequest'], request_name => 'gitSubmodulesConfigOverride' );
  has IdempotencyToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idempotencyToken' );
  has ImageOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageOverride' );
  has ImagePullCredentialsTypeOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imagePullCredentialsTypeOverride' );
  has InsecureSslOverride => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'insecureSslOverride' );
  has LogsConfigOverride => (is => 'ro', isa => 'Paws::CodeBuild::LogsConfig', traits => ['NameInRequest'], request_name => 'logsConfigOverride' );
  has PrivilegedModeOverride => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'privilegedModeOverride' );
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName' , required => 1);
  has QueuedTimeoutInMinutesOverride => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'queuedTimeoutInMinutesOverride' );
  has RegistryCredentialOverride => (is => 'ro', isa => 'Paws::CodeBuild::RegistryCredential', traits => ['NameInRequest'], request_name => 'registryCredentialOverride' );
  has ReportBuildStatusOverride => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'reportBuildStatusOverride' );
  has SecondaryArtifactsOverride => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectArtifacts]', traits => ['NameInRequest'], request_name => 'secondaryArtifactsOverride' );
  has SecondarySourcesOverride => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectSource]', traits => ['NameInRequest'], request_name => 'secondarySourcesOverride' );
  has SecondarySourcesVersionOverride => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectSourceVersion]', traits => ['NameInRequest'], request_name => 'secondarySourcesVersionOverride' );
  has ServiceRoleOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRoleOverride' );
  has SourceAuthOverride => (is => 'ro', isa => 'Paws::CodeBuild::SourceAuth', traits => ['NameInRequest'], request_name => 'sourceAuthOverride' );
  has SourceLocationOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceLocationOverride' );
  has SourceTypeOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceTypeOverride' );
  has SourceVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceVersion' );
  has TimeoutInMinutesOverride => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutInMinutesOverride' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartBuild');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::StartBuildOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::StartBuild - Arguments for method StartBuild on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartBuild on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method StartBuild.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartBuild.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $StartBuildOutput = $codebuild->StartBuild(
      ProjectName       => 'MyNonEmptyString',
      ArtifactsOverride => {
        Type => 'CODEPIPELINE',        # values: CODEPIPELINE, S3, NO_ARTIFACTS
        ArtifactIdentifier => 'MyString',    # OPTIONAL
        BucketOwnerAccess  => 'NONE',  # values: NONE, READ_ONLY, FULL; OPTIONAL
        EncryptionDisabled => 1,       # OPTIONAL
        Location             => 'MyString',   # OPTIONAL
        Name                 => 'MyString',   # OPTIONAL
        NamespaceType        => 'NONE',       # values: NONE, BUILD_ID; OPTIONAL
        OverrideArtifactName => 1,            # OPTIONAL
        Packaging            => 'NONE',       # values: NONE, ZIP; OPTIONAL
        Path                 => 'MyString',   # OPTIONAL
      },    # OPTIONAL
      AutoRetryLimitOverride    => 1,    # OPTIONAL
      BuildStatusConfigOverride => {
        Context   => 'MyString',         # OPTIONAL
        TargetUrl => 'MyString',         # OPTIONAL
      },    # OPTIONAL
      BuildspecOverride => 'MyString',    # OPTIONAL
      CacheOverride     => {
        Type           => 'NO_CACHE',     # values: NO_CACHE, S3, LOCAL
        CacheNamespace => 'MyString',     # OPTIONAL
        Location       => 'MyString',     # OPTIONAL
        Modes          => [
          'LOCAL_DOCKER_LAYER_CACHE',
          ... # values: LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
        ],    # OPTIONAL
      },    # OPTIONAL
      CertificateOverride          => 'MyString',                # OPTIONAL
      ComputeTypeOverride          => 'BUILD_GENERAL1_SMALL',    # OPTIONAL
      DebugSessionEnabled          => 1,                         # OPTIONAL
      EncryptionKeyOverride        => 'MyNonEmptyString',        # OPTIONAL
      EnvironmentTypeOverride      => 'WINDOWS_CONTAINER',       # OPTIONAL
      EnvironmentVariablesOverride => [
        {
          Name  => 'MyNonEmptyString',    # min: 1
          Value => 'MyString',            # OPTIONAL
          Type  => 'PLAINTEXT'
          ,    # values: PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      FleetOverride => {
        FleetArn => 'MyString',    # OPTIONAL
      },    # OPTIONAL
      GitCloneDepthOverride       => 1,    # OPTIONAL
      GitSubmodulesConfigOverride => {
        FetchSubmodules => 1,              # OPTIONAL

      },    # OPTIONAL
      IdempotencyToken                 => 'MyString',            # OPTIONAL
      ImageOverride                    => 'MyNonEmptyString',    # OPTIONAL
      ImagePullCredentialsTypeOverride => 'CODEBUILD',           # OPTIONAL
      InsecureSslOverride              => 1,                     # OPTIONAL
      LogsConfigOverride               => {
        CloudWatchLogs => {
          Status     => 'ENABLED',     # values: ENABLED, DISABLED
          GroupName  => 'MyString',    # OPTIONAL
          StreamName => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        S3Logs => {
          Status            => 'ENABLED',      # values: ENABLED, DISABLED
          BucketOwnerAccess => 'NONE', # values: NONE, READ_ONLY, FULL; OPTIONAL
          EncryptionDisabled => 1,             # OPTIONAL
          Location           => 'MyString',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      PrivilegedModeOverride         => 1,    # OPTIONAL
      QueuedTimeoutInMinutesOverride => 1,    # OPTIONAL
      RegistryCredentialOverride     => {
        Credential         => 'MyNonEmptyString',    # min: 1
        CredentialProvider => 'SECRETS_MANAGER',     # values: SECRETS_MANAGER

      },    # OPTIONAL
      ReportBuildStatusOverride  => 1,    # OPTIONAL
      SecondaryArtifactsOverride => [
        {
          Type => 'CODEPIPELINE',      # values: CODEPIPELINE, S3, NO_ARTIFACTS
          ArtifactIdentifier => 'MyString',    # OPTIONAL
          BucketOwnerAccess => 'NONE', # values: NONE, READ_ONLY, FULL; OPTIONAL
          EncryptionDisabled   => 1,          # OPTIONAL
          Location             => 'MyString', # OPTIONAL
          Name                 => 'MyString', # OPTIONAL
          NamespaceType        => 'NONE',     # values: NONE, BUILD_ID; OPTIONAL
          OverrideArtifactName => 1,          # OPTIONAL
          Packaging            => 'NONE',     # values: NONE, ZIP; OPTIONAL
          Path                 => 'MyString', # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SecondarySourcesOverride => [
        {
          Type => 'CODECOMMIT'
          , # values: CODECOMMIT, CODEPIPELINE, GITHUB, GITLAB, GITLAB_SELF_MANAGED, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
          Auth => {
            Type => 'OAUTH',   # values: OAUTH, CODECONNECTIONS, SECRETS_MANAGER
            Resource => 'MyString',    # OPTIONAL
          },    # OPTIONAL
          BuildStatusConfig => {
            Context   => 'MyString',    # OPTIONAL
            TargetUrl => 'MyString',    # OPTIONAL
          },
          Buildspec           => 'MyString',    # OPTIONAL
          GitCloneDepth       => 1,
          GitSubmodulesConfig => {
            FetchSubmodules => 1,               # OPTIONAL

          },
          InsecureSsl       => 1,             # OPTIONAL
          Location          => 'MyString',    # OPTIONAL
          ReportBuildStatus => 1,             # OPTIONAL
          SourceIdentifier  => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SecondarySourcesVersionOverride => [
        {
          SourceIdentifier => 'MyString',    # OPTIONAL
          SourceVersion    => 'MyString',    # OPTIONAL

        },
        ...
      ],    # OPTIONAL
      ServiceRoleOverride => 'MyNonEmptyString',    # OPTIONAL
      SourceAuthOverride  => {
        Type     => 'OAUTH',   # values: OAUTH, CODECONNECTIONS, SECRETS_MANAGER
        Resource => 'MyString',    # OPTIONAL
      },    # OPTIONAL
      SourceLocationOverride   => 'MyString',      # OPTIONAL
      SourceTypeOverride       => 'CODECOMMIT',    # OPTIONAL
      SourceVersion            => 'MyString',      # OPTIONAL
      TimeoutInMinutesOverride => 1,               # OPTIONAL
    );

    # Results:
    my $Build = $StartBuildOutput->Build;

    # Returns a L<Paws::CodeBuild::StartBuildOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/StartBuild>

=head1 ATTRIBUTES


=head2 ArtifactsOverride => L<Paws::CodeBuild::ProjectArtifacts>

Build output artifact settings that override, for this build only, the
latest ones already defined in the build project.



=head2 AutoRetryLimitOverride => Int

The maximum number of additional automatic retries after a failed
build. For example, if the auto-retry limit is set to 2, CodeBuild will
call the C<RetryBuild> API to automatically retry your build for up to
2 additional times.



=head2 BuildspecOverride => Str

A buildspec file declaration that overrides the latest one defined in
the build project, for this build only. The buildspec defined on the
project is not changed.

If this value is set, it can be either an inline buildspec definition,
the path to an alternate buildspec file relative to the value of the
built-in C<CODEBUILD_SRC_DIR> environment variable, or the path to an
S3 bucket. The bucket must be in the same Amazon Web Services Region as
the build project. Specify the buildspec file using its ARN (for
example, C<arn:aws:s3:::my-codebuild-sample2/buildspec.yml>). If this
value is not provided or is set to an empty string, the source code
must contain a buildspec file in its root directory. For more
information, see Buildspec File Name and Storage Location
(https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage).

Since this property allows you to change the build commands that will
run in the container, you should note that an IAM principal with the
ability to call this API and set this parameter can override the
default settings. Moreover, we encourage that you use a trustworthy
buildspec location like a file in your source repository or a Amazon S3
bucket.



=head2 BuildStatusConfigOverride => L<Paws::CodeBuild::BuildStatusConfig>

Contains information that defines how the build project reports the
build status to the source provider. This option is only used when the
source provider is C<GITHUB>, C<GITHUB_ENTERPRISE>, or C<BITBUCKET>.



=head2 CacheOverride => L<Paws::CodeBuild::ProjectCache>

A ProjectCache object specified for this build that overrides the one
defined in the build project.



=head2 CertificateOverride => Str

The name of a certificate for this build that overrides the one
specified in the build project.



=head2 ComputeTypeOverride => Str

The name of a compute type for this build that overrides the one
specified in the build project.

Valid values are: C<"BUILD_GENERAL1_SMALL">, C<"BUILD_GENERAL1_MEDIUM">, C<"BUILD_GENERAL1_LARGE">, C<"BUILD_GENERAL1_XLARGE">, C<"BUILD_GENERAL1_2XLARGE">, C<"BUILD_LAMBDA_1GB">, C<"BUILD_LAMBDA_2GB">, C<"BUILD_LAMBDA_4GB">, C<"BUILD_LAMBDA_8GB">, C<"BUILD_LAMBDA_10GB">, C<"ATTRIBUTE_BASED_COMPUTE">, C<"CUSTOM_INSTANCE_TYPE">

=head2 DebugSessionEnabled => Bool

Specifies if session debugging is enabled for this build. For more
information, see Viewing a running build in Session Manager
(https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html).



=head2 EncryptionKeyOverride => Str

The Key Management Service customer master key (CMK) that overrides the
one specified in the build project. The CMK key encrypts the build
output artifacts.

You can use a cross-account KMS key to encrypt the build output
artifacts if your service role has permission to that key.

You can specify either the Amazon Resource Name (ARN) of the CMK or, if
available, the CMK's alias (using the format
C<alias/E<lt>alias-nameE<gt>>).



=head2 EnvironmentTypeOverride => Str

A container type for this build that overrides the one specified in the
build project.

Valid values are: C<"WINDOWS_CONTAINER">, C<"LINUX_CONTAINER">, C<"LINUX_GPU_CONTAINER">, C<"ARM_CONTAINER">, C<"WINDOWS_SERVER_2019_CONTAINER">, C<"WINDOWS_SERVER_2022_CONTAINER">, C<"LINUX_LAMBDA_CONTAINER">, C<"ARM_LAMBDA_CONTAINER">, C<"LINUX_EC2">, C<"ARM_EC2">, C<"WINDOWS_EC2">, C<"MAC_ARM">

=head2 EnvironmentVariablesOverride => ArrayRef[L<Paws::CodeBuild::EnvironmentVariable>]

A set of environment variables that overrides, for this build only, the
latest ones already defined in the build project.



=head2 FleetOverride => L<Paws::CodeBuild::ProjectFleet>

A ProjectFleet object specified for this build that overrides the one
defined in the build project.



=head2 GitCloneDepthOverride => Int

The user-defined depth of history, with a minimum value of 0, that
overrides, for this build only, any previous depth of history defined
in the build project.



=head2 GitSubmodulesConfigOverride => L<Paws::CodeBuild::GitSubmodulesConfig>

Information about the Git submodules configuration for this build of an
CodeBuild build project.



=head2 IdempotencyToken => Str

A unique, case sensitive identifier you provide to ensure the
idempotency of the StartBuild request. The token is included in the
StartBuild request and is valid for 5 minutes. If you repeat the
StartBuild request with the same token, but change a parameter,
CodeBuild returns a parameter mismatch error.



=head2 ImageOverride => Str

The name of an image for this build that overrides the one specified in
the build project.



=head2 ImagePullCredentialsTypeOverride => Str

The type of credentials CodeBuild uses to pull images in your build.
There are two valid values:

=over

=item CODEBUILD

Specifies that CodeBuild uses its own credentials. This requires that
you modify your ECR repository policy to trust CodeBuild's service
principal.

=item SERVICE_ROLE

Specifies that CodeBuild uses your build project's service role.

=back

When using a cross-account or private registry image, you must use
C<SERVICE_ROLE> credentials. When using an CodeBuild curated image, you
must use C<CODEBUILD> credentials.

Valid values are: C<"CODEBUILD">, C<"SERVICE_ROLE">

=head2 InsecureSslOverride => Bool

Enable this flag to override the insecure SSL setting that is specified
in the build project. The insecure SSL setting determines whether to
ignore SSL warnings while connecting to the project source code. This
override applies only if the build's source is GitHub Enterprise.



=head2 LogsConfigOverride => L<Paws::CodeBuild::LogsConfig>

Log settings for this build that override the log settings defined in
the build project.



=head2 PrivilegedModeOverride => Bool

Enable this flag to override privileged mode in the build project.



=head2 B<REQUIRED> ProjectName => Str

The name of the CodeBuild build project to start running a build.



=head2 QueuedTimeoutInMinutesOverride => Int

The number of minutes a build is allowed to be queued before it times
out.



=head2 RegistryCredentialOverride => L<Paws::CodeBuild::RegistryCredential>

The credentials for access to a private registry.



=head2 ReportBuildStatusOverride => Bool

Set to true to report to your source provider the status of a build's
start and completion. If you use this option with a source provider
other than GitHub, GitHub Enterprise, GitLab, GitLab Self Managed, or
Bitbucket, an C<invalidInputException> is thrown.

To be able to report the build status to the source provider, the user
associated with the source provider must have write access to the repo.
If the user does not have write access, the build status cannot be
updated. For more information, see Source provider access
(https://docs.aws.amazon.com/codebuild/latest/userguide/access-tokens.html)
in the I<CodeBuild User Guide>.

The status of a build triggered by a webhook is always reported to your
source provider.



=head2 SecondaryArtifactsOverride => ArrayRef[L<Paws::CodeBuild::ProjectArtifacts>]

An array of C<ProjectArtifacts> objects.



=head2 SecondarySourcesOverride => ArrayRef[L<Paws::CodeBuild::ProjectSource>]

An array of C<ProjectSource> objects.



=head2 SecondarySourcesVersionOverride => ArrayRef[L<Paws::CodeBuild::ProjectSourceVersion>]

An array of C<ProjectSourceVersion> objects that specify one or more
versions of the project's secondary sources to be used for this build
only.



=head2 ServiceRoleOverride => Str

The name of a service role for this build that overrides the one
specified in the build project.



=head2 SourceAuthOverride => L<Paws::CodeBuild::SourceAuth>

An authorization type for this build that overrides the one defined in
the build project. This override applies only if the build project's
source is BitBucket, GitHub, GitLab, or GitLab Self Managed.



=head2 SourceLocationOverride => Str

A location that overrides, for this build, the source location for the
one defined in the build project.



=head2 SourceTypeOverride => Str

A source input type, for this build, that overrides the source input
defined in the build project.

Valid values are: C<"CODECOMMIT">, C<"CODEPIPELINE">, C<"GITHUB">, C<"GITLAB">, C<"GITLAB_SELF_MANAGED">, C<"S3">, C<"BITBUCKET">, C<"GITHUB_ENTERPRISE">, C<"NO_SOURCE">

=head2 SourceVersion => Str

The version of the build input to be built, for this build only. If not
specified, the latest version is used. If specified, the contents
depends on the source provider:

=over

=item CodeCommit

The commit ID, branch, or Git tag to use.

=item GitHub

The commit ID, pull request ID, branch name, or tag name that
corresponds to the version of the source code you want to build. If a
pull request ID is specified, it must use the format
C<pr/pull-request-ID> (for example C<pr/25>). If a branch name is
specified, the branch's HEAD commit ID is used. If not specified, the
default branch's HEAD commit ID is used.

=item GitLab

The commit ID, branch, or Git tag to use.

=item Bitbucket

The commit ID, branch name, or tag name that corresponds to the version
of the source code you want to build. If a branch name is specified,
the branch's HEAD commit ID is used. If not specified, the default
branch's HEAD commit ID is used.

=item Amazon S3

The version ID of the object that represents the build input ZIP file
to use.

=back

If C<sourceVersion> is specified at the project level, then this
C<sourceVersion> (at the build level) takes precedence.

For more information, see Source Version Sample with CodeBuild
(https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html)
in the I<CodeBuild User Guide>.



=head2 TimeoutInMinutesOverride => Int

The number of build timeout minutes, from 5 to 2160 (36 hours), that
overrides, for this build only, the latest setting already defined in
the build project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartBuild in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

