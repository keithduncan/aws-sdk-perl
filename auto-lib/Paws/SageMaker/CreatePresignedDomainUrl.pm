
package Paws::SageMaker::CreatePresignedDomainUrl;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has ExpiresInSeconds => (is => 'ro', isa => 'Int');
  has LandingUri => (is => 'ro', isa => 'Str');
  has SessionExpirationDurationInSeconds => (is => 'ro', isa => 'Int');
  has SpaceName => (is => 'ro', isa => 'Str');
  has UserProfileName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePresignedDomainUrl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreatePresignedDomainUrlResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreatePresignedDomainUrl - Arguments for method CreatePresignedDomainUrl on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePresignedDomainUrl on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreatePresignedDomainUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePresignedDomainUrl.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreatePresignedDomainUrlResponse =
      $api . sagemaker->CreatePresignedDomainUrl(
      DomainId                           => 'MyDomainId',
      UserProfileName                    => 'MyUserProfileName',
      ExpiresInSeconds                   => 1,                     # OPTIONAL
      LandingUri                         => 'MyLandingUri',        # OPTIONAL
      SessionExpirationDurationInSeconds => 1,                     # OPTIONAL
      SpaceName                          => 'MySpaceName',         # OPTIONAL
      );

    # Results:
    my $AuthorizedUrl = $CreatePresignedDomainUrlResponse->AuthorizedUrl;

    # Returns a L<Paws::SageMaker::CreatePresignedDomainUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreatePresignedDomainUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The domain ID.



=head2 ExpiresInSeconds => Int

The number of seconds until the pre-signed URL expires. This value
defaults to 300.



=head2 LandingUri => Str

The landing page that the user is directed to when accessing the
presigned URL. Using this value, users can access Studio or Studio
Classic, even if it is not the default experience for the domain. The
supported values are:

=over

=item *

C<studio::relative/path>: Directs users to the relative path in Studio.

=item *

C<app:JupyterServer:relative/path>: Directs users to the relative path
in the Studio Classic application.

=item *

C<app:JupyterLab:relative/path>: Directs users to the relative path in
the JupyterLab application.

=item *

C<app:RStudioServerPro:relative/path>: Directs users to the relative
path in the RStudio application.

=item *

C<app:CodeEditor:relative/path>: Directs users to the relative path in
the Code Editor, based on Code-OSS, Visual Studio Code - Open Source
application.

=item *

C<app:Canvas:relative/path>: Directs users to the relative path in the
Canvas application.

=back




=head2 SessionExpirationDurationInSeconds => Int

The session expiration duration in seconds. This value defaults to
43200.



=head2 SpaceName => Str

The name of the space.



=head2 B<REQUIRED> UserProfileName => Str

The name of the UserProfile to sign-in as.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePresignedDomainUrl in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

