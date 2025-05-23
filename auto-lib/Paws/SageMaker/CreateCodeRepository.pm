
package Paws::SageMaker::CreateCodeRepository;
  use Moose;
  has CodeRepositoryName => (is => 'ro', isa => 'Str', required => 1);
  has GitConfig => (is => 'ro', isa => 'Paws::SageMaker::GitConfig', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCodeRepository');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateCodeRepositoryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateCodeRepository - Arguments for method CreateCodeRepository on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCodeRepository on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateCodeRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCodeRepository.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateCodeRepositoryOutput = $api . sagemaker->CreateCodeRepository(
      CodeRepositoryName => 'MyEntityName',
      GitConfig          => {
        RepositoryUrl => 'MyGitConfigUrl',    # min: 11, max: 1024
        Branch        => 'MyBranch',          # min: 1, max: 1024; OPTIONAL
        SecretArn     => 'MySecretArn',       # min: 1, max: 2048; OPTIONAL
      },
      Tags => [
        {
          Key   => 'MyTagKey',                # min: 1, max: 128
          Value => 'MyTagValue',              # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CodeRepositoryArn = $CreateCodeRepositoryOutput->CodeRepositoryArn;

    # Returns a L<Paws::SageMaker::CreateCodeRepositoryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateCodeRepository>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeRepositoryName => Str

The name of the Git repository. The name must have 1 to 63 characters.
Valid characters are a-z, A-Z, 0-9, and - (hyphen).



=head2 B<REQUIRED> GitConfig => L<Paws::SageMaker::GitConfig>

Specifies details about the repository, including the URL where the
repository is located, the default branch, and credentials to use to
access the repository.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. You can use tags to categorize your Amazon
Web Services resources in different ways, for example, by purpose,
owner, or environment. For more information, see Tagging Amazon Web
Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCodeRepository in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

