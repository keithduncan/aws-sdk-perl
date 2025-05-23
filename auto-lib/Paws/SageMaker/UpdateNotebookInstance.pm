
package Paws::SageMaker::UpdateNotebookInstance;
  use Moose;
  has AcceleratorTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AdditionalCodeRepositories => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DefaultCodeRepository => (is => 'ro', isa => 'Str');
  has DisassociateAcceleratorTypes => (is => 'ro', isa => 'Bool');
  has DisassociateAdditionalCodeRepositories => (is => 'ro', isa => 'Bool');
  has DisassociateDefaultCodeRepository => (is => 'ro', isa => 'Bool');
  has DisassociateLifecycleConfig => (is => 'ro', isa => 'Bool');
  has InstanceMetadataServiceConfiguration => (is => 'ro', isa => 'Paws::SageMaker::InstanceMetadataServiceConfiguration');
  has InstanceType => (is => 'ro', isa => 'Str');
  has LifecycleConfigName => (is => 'ro', isa => 'Str');
  has NotebookInstanceName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has RootAccess => (is => 'ro', isa => 'Str');
  has VolumeSizeInGB => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNotebookInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateNotebookInstanceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateNotebookInstance - Arguments for method UpdateNotebookInstance on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNotebookInstance on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateNotebookInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNotebookInstance.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateNotebookInstanceOutput = $api . sagemaker->UpdateNotebookInstance(
      NotebookInstanceName => 'MyNotebookInstanceName',
      AcceleratorTypes     => [
        'ml.eia1.medium',
        ... # values: ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge, ml.eia2.medium, ml.eia2.large, ml.eia2.xlarge
      ],    # OPTIONAL
      AdditionalCodeRepositories => [
        'MyCodeRepositoryNameOrUrl', ...    # min: 1, max: 1024
      ],    # OPTIONAL
      DefaultCodeRepository        => 'MyCodeRepositoryNameOrUrl',    # OPTIONAL
      DisassociateAcceleratorTypes => 1,                              # OPTIONAL
      DisassociateAdditionalCodeRepositories => 1,                    # OPTIONAL
      DisassociateDefaultCodeRepository      => 1,                    # OPTIONAL
      DisassociateLifecycleConfig            => 1,                    # OPTIONAL
      InstanceMetadataServiceConfiguration   => {
        MinimumInstanceMetadataServiceVersion =>
          'MyMinimumInstanceMetadataServiceVersion',                  # max: 1

      },    # OPTIONAL
      InstanceType        => 'ml.t2.medium',                          # OPTIONAL
      LifecycleConfigName => 'MyNotebookInstanceLifecycleConfigName', # OPTIONAL
      RoleArn             => 'MyRoleArn',                             # OPTIONAL
      RootAccess          => 'Enabled',                               # OPTIONAL
      VolumeSizeInGB      => 1,                                       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateNotebookInstance>

=head1 ATTRIBUTES


=head2 AcceleratorTypes => ArrayRef[Str|Undef]

This parameter is no longer supported. Elastic Inference (EI) is no
longer available.

This parameter was used to specify a list of the EI instance types to
associate with this notebook instance.



=head2 AdditionalCodeRepositories => ArrayRef[Str|Undef]

An array of up to three Git repositories to associate with the notebook
instance. These can be either the names of Git repositories stored as
resources in your account, or the URL of Git repositories in Amazon Web
Services CodeCommit
(https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
or in any other Git repository. These repositories are cloned at the
same level as the default repository of your notebook instance. For
more information, see Associating Git Repositories with SageMaker AI
Notebook Instances
(https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html).



=head2 DefaultCodeRepository => Str

The Git repository to associate with the notebook instance as its
default code repository. This can be either the name of a Git
repository stored as a resource in your account, or the URL of a Git
repository in Amazon Web Services CodeCommit
(https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
or in any other Git repository. When you open a notebook instance, it
opens in the directory that contains this repository. For more
information, see Associating Git Repositories with SageMaker AI
Notebook Instances
(https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html).



=head2 DisassociateAcceleratorTypes => Bool

This parameter is no longer supported. Elastic Inference (EI) is no
longer available.

This parameter was used to specify a list of the EI instance types to
remove from this notebook instance.



=head2 DisassociateAdditionalCodeRepositories => Bool

A list of names or URLs of the default Git repositories to remove from
this notebook instance. This operation is idempotent. If you specify a
Git repository that is not associated with the notebook instance when
you call this method, it does not throw an error.



=head2 DisassociateDefaultCodeRepository => Bool

The name or URL of the default Git repository to remove from this
notebook instance. This operation is idempotent. If you specify a Git
repository that is not associated with the notebook instance when you
call this method, it does not throw an error.



=head2 DisassociateLifecycleConfig => Bool

Set to C<true> to remove the notebook instance lifecycle configuration
currently associated with the notebook instance. This operation is
idempotent. If you specify a lifecycle configuration that is not
associated with the notebook instance when you call this method, it
does not throw an error.



=head2 InstanceMetadataServiceConfiguration => L<Paws::SageMaker::InstanceMetadataServiceConfiguration>

Information on the IMDS configuration of the notebook instance



=head2 InstanceType => Str

The Amazon ML compute instance type.

Valid values are: C<"ml.t2.medium">, C<"ml.t2.large">, C<"ml.t2.xlarge">, C<"ml.t2.2xlarge">, C<"ml.t3.medium">, C<"ml.t3.large">, C<"ml.t3.xlarge">, C<"ml.t3.2xlarge">, C<"ml.m4.xlarge">, C<"ml.m4.2xlarge">, C<"ml.m4.4xlarge">, C<"ml.m4.10xlarge">, C<"ml.m4.16xlarge">, C<"ml.m5.xlarge">, C<"ml.m5.2xlarge">, C<"ml.m5.4xlarge">, C<"ml.m5.12xlarge">, C<"ml.m5.24xlarge">, C<"ml.m5d.large">, C<"ml.m5d.xlarge">, C<"ml.m5d.2xlarge">, C<"ml.m5d.4xlarge">, C<"ml.m5d.8xlarge">, C<"ml.m5d.12xlarge">, C<"ml.m5d.16xlarge">, C<"ml.m5d.24xlarge">, C<"ml.c4.xlarge">, C<"ml.c4.2xlarge">, C<"ml.c4.4xlarge">, C<"ml.c4.8xlarge">, C<"ml.c5.xlarge">, C<"ml.c5.2xlarge">, C<"ml.c5.4xlarge">, C<"ml.c5.9xlarge">, C<"ml.c5.18xlarge">, C<"ml.c5d.xlarge">, C<"ml.c5d.2xlarge">, C<"ml.c5d.4xlarge">, C<"ml.c5d.9xlarge">, C<"ml.c5d.18xlarge">, C<"ml.p2.xlarge">, C<"ml.p2.8xlarge">, C<"ml.p2.16xlarge">, C<"ml.p3.2xlarge">, C<"ml.p3.8xlarge">, C<"ml.p3.16xlarge">, C<"ml.p3dn.24xlarge">, C<"ml.g4dn.xlarge">, C<"ml.g4dn.2xlarge">, C<"ml.g4dn.4xlarge">, C<"ml.g4dn.8xlarge">, C<"ml.g4dn.12xlarge">, C<"ml.g4dn.16xlarge">, C<"ml.r5.large">, C<"ml.r5.xlarge">, C<"ml.r5.2xlarge">, C<"ml.r5.4xlarge">, C<"ml.r5.8xlarge">, C<"ml.r5.12xlarge">, C<"ml.r5.16xlarge">, C<"ml.r5.24xlarge">, C<"ml.g5.xlarge">, C<"ml.g5.2xlarge">, C<"ml.g5.4xlarge">, C<"ml.g5.8xlarge">, C<"ml.g5.16xlarge">, C<"ml.g5.12xlarge">, C<"ml.g5.24xlarge">, C<"ml.g5.48xlarge">, C<"ml.inf1.xlarge">, C<"ml.inf1.2xlarge">, C<"ml.inf1.6xlarge">, C<"ml.inf1.24xlarge">, C<"ml.trn1.2xlarge">, C<"ml.trn1.32xlarge">, C<"ml.trn1n.32xlarge">, C<"ml.inf2.xlarge">, C<"ml.inf2.8xlarge">, C<"ml.inf2.24xlarge">, C<"ml.inf2.48xlarge">, C<"ml.p4d.24xlarge">, C<"ml.p4de.24xlarge">, C<"ml.p5.48xlarge">, C<"ml.m6i.large">, C<"ml.m6i.xlarge">, C<"ml.m6i.2xlarge">, C<"ml.m6i.4xlarge">, C<"ml.m6i.8xlarge">, C<"ml.m6i.12xlarge">, C<"ml.m6i.16xlarge">, C<"ml.m6i.24xlarge">, C<"ml.m6i.32xlarge">, C<"ml.m7i.large">, C<"ml.m7i.xlarge">, C<"ml.m7i.2xlarge">, C<"ml.m7i.4xlarge">, C<"ml.m7i.8xlarge">, C<"ml.m7i.12xlarge">, C<"ml.m7i.16xlarge">, C<"ml.m7i.24xlarge">, C<"ml.m7i.48xlarge">, C<"ml.c6i.large">, C<"ml.c6i.xlarge">, C<"ml.c6i.2xlarge">, C<"ml.c6i.4xlarge">, C<"ml.c6i.8xlarge">, C<"ml.c6i.12xlarge">, C<"ml.c6i.16xlarge">, C<"ml.c6i.24xlarge">, C<"ml.c6i.32xlarge">, C<"ml.c7i.large">, C<"ml.c7i.xlarge">, C<"ml.c7i.2xlarge">, C<"ml.c7i.4xlarge">, C<"ml.c7i.8xlarge">, C<"ml.c7i.12xlarge">, C<"ml.c7i.16xlarge">, C<"ml.c7i.24xlarge">, C<"ml.c7i.48xlarge">, C<"ml.r6i.large">, C<"ml.r6i.xlarge">, C<"ml.r6i.2xlarge">, C<"ml.r6i.4xlarge">, C<"ml.r6i.8xlarge">, C<"ml.r6i.12xlarge">, C<"ml.r6i.16xlarge">, C<"ml.r6i.24xlarge">, C<"ml.r6i.32xlarge">, C<"ml.r7i.large">, C<"ml.r7i.xlarge">, C<"ml.r7i.2xlarge">, C<"ml.r7i.4xlarge">, C<"ml.r7i.8xlarge">, C<"ml.r7i.12xlarge">, C<"ml.r7i.16xlarge">, C<"ml.r7i.24xlarge">, C<"ml.r7i.48xlarge">, C<"ml.m6id.large">, C<"ml.m6id.xlarge">, C<"ml.m6id.2xlarge">, C<"ml.m6id.4xlarge">, C<"ml.m6id.8xlarge">, C<"ml.m6id.12xlarge">, C<"ml.m6id.16xlarge">, C<"ml.m6id.24xlarge">, C<"ml.m6id.32xlarge">, C<"ml.c6id.large">, C<"ml.c6id.xlarge">, C<"ml.c6id.2xlarge">, C<"ml.c6id.4xlarge">, C<"ml.c6id.8xlarge">, C<"ml.c6id.12xlarge">, C<"ml.c6id.16xlarge">, C<"ml.c6id.24xlarge">, C<"ml.c6id.32xlarge">, C<"ml.r6id.large">, C<"ml.r6id.xlarge">, C<"ml.r6id.2xlarge">, C<"ml.r6id.4xlarge">, C<"ml.r6id.8xlarge">, C<"ml.r6id.12xlarge">, C<"ml.r6id.16xlarge">, C<"ml.r6id.24xlarge">, C<"ml.r6id.32xlarge">, C<"ml.g6.xlarge">, C<"ml.g6.2xlarge">, C<"ml.g6.4xlarge">, C<"ml.g6.8xlarge">, C<"ml.g6.12xlarge">, C<"ml.g6.16xlarge">, C<"ml.g6.24xlarge">, C<"ml.g6.48xlarge">

=head2 LifecycleConfigName => Str

The name of a lifecycle configuration to associate with the notebook
instance. For information about lifestyle configurations, see Step 2.1:
(Optional) Customize a Notebook Instance
(https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html).



=head2 B<REQUIRED> NotebookInstanceName => Str

The name of the notebook instance to update.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that SageMaker AI can
assume to access the notebook instance. For more information, see
SageMaker AI Roles
(https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).

To be able to pass this role to SageMaker AI, the caller of this API
must have the C<iam:PassRole> permission.



=head2 RootAccess => Str

Whether root access is enabled or disabled for users of the notebook
instance. The default value is C<Enabled>.

If you set this to C<Disabled>, users don't have root access on the
notebook instance, but lifecycle configuration scripts still run with
root permissions.

Valid values are: C<"Enabled">, C<"Disabled">

=head2 VolumeSizeInGB => Int

The size, in GB, of the ML storage volume to attach to the notebook
instance. The default value is 5 GB. ML storage volumes are encrypted,
so SageMaker AI can't determine the amount of available free space on
the volume. Because of this, you can increase the volume size when you
update a notebook instance, but you can't decrease the volume size. If
you want to decrease the size of the ML storage volume in use, create a
new notebook instance with the desired size.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNotebookInstance in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

