
package Paws::SageMaker::DeleteApp;
  use Moose;
  has AppName => (is => 'ro', isa => 'Str', required => 1);
  has AppType => (is => 'ro', isa => 'Str', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str');
  has UserProfileName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeleteApp - Arguments for method DeleteApp on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApp on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DeleteApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApp.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    $api . sagemaker->DeleteApp(
      AppName         => 'MyAppName',
      AppType         => 'JupyterServer',
      DomainId        => 'MyDomainId',
      SpaceName       => 'MySpaceName',          # OPTIONAL
      UserProfileName => 'MyUserProfileName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DeleteApp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppName => Str

The name of the app.



=head2 B<REQUIRED> AppType => Str

The type of app.

Valid values are: C<"JupyterServer">, C<"KernelGateway">, C<"DetailedProfiler">, C<"TensorBoard">, C<"CodeEditor">, C<"JupyterLab">, C<"RStudioServerPro">, C<"RSessionGateway">, C<"Canvas">

=head2 B<REQUIRED> DomainId => Str

The domain ID.



=head2 SpaceName => Str

The name of the space. If this value is not set, then
C<UserProfileName> must be set.



=head2 UserProfileName => Str

The user profile name. If this value is not set, then C<SpaceName> must
be set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApp in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

