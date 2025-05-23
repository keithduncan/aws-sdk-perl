# Generated by default/object.tt
package Paws::SageMaker::UserSettings;
  use Moose;
  has AutoMountHomeEFS => (is => 'ro', isa => 'Str');
  has CanvasAppSettings => (is => 'ro', isa => 'Paws::SageMaker::CanvasAppSettings');
  has CodeEditorAppSettings => (is => 'ro', isa => 'Paws::SageMaker::CodeEditorAppSettings');
  has CustomFileSystemConfigs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::CustomFileSystemConfig]');
  has CustomPosixUserConfig => (is => 'ro', isa => 'Paws::SageMaker::CustomPosixUserConfig');
  has DefaultLandingUri => (is => 'ro', isa => 'Str');
  has ExecutionRole => (is => 'ro', isa => 'Str');
  has JupyterLabAppSettings => (is => 'ro', isa => 'Paws::SageMaker::JupyterLabAppSettings');
  has JupyterServerAppSettings => (is => 'ro', isa => 'Paws::SageMaker::JupyterServerAppSettings');
  has KernelGatewayAppSettings => (is => 'ro', isa => 'Paws::SageMaker::KernelGatewayAppSettings');
  has RSessionAppSettings => (is => 'ro', isa => 'Paws::SageMaker::RSessionAppSettings');
  has RStudioServerProAppSettings => (is => 'ro', isa => 'Paws::SageMaker::RStudioServerProAppSettings');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SharingSettings => (is => 'ro', isa => 'Paws::SageMaker::SharingSettings');
  has SpaceStorageSettings => (is => 'ro', isa => 'Paws::SageMaker::DefaultSpaceStorageSettings');
  has StudioWebPortal => (is => 'ro', isa => 'Str');
  has StudioWebPortalSettings => (is => 'ro', isa => 'Paws::SageMaker::StudioWebPortalSettings');
  has TensorBoardAppSettings => (is => 'ro', isa => 'Paws::SageMaker::TensorBoardAppSettings');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UserSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::UserSettings object:

  $service_obj->Method(Att1 => { AutoMountHomeEFS => $value, ..., TensorBoardAppSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::UserSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoMountHomeEFS

=head1 DESCRIPTION

A collection of settings that apply to users in a domain. These
settings are specified when the C<CreateUserProfile> API is called, and
as C<DefaultUserSettings> when the C<CreateDomain> API is called.

C<SecurityGroups> is aggregated when specified in both calls. For all
other settings in C<UserSettings>, the values specified in
C<CreateUserProfile> take precedence over those specified in
C<CreateDomain>.

=head1 ATTRIBUTES


=head2 AutoMountHomeEFS => Str

Indicates whether auto-mounting of an EFS volume is supported for the
user profile. The C<DefaultAsDomain> value is only supported for user
profiles. Do not use the C<DefaultAsDomain> value when setting this
parameter for a domain.

SageMaker applies this setting only to private spaces that the user
creates in the domain. SageMaker doesn't apply this setting to shared
spaces.


=head2 CanvasAppSettings => L<Paws::SageMaker::CanvasAppSettings>

The Canvas app settings.

SageMaker applies these settings only to private spaces that SageMaker
creates for the Canvas app.


=head2 CodeEditorAppSettings => L<Paws::SageMaker::CodeEditorAppSettings>

The Code Editor application settings.

SageMaker applies these settings only to private spaces that the user
creates in the domain. SageMaker doesn't apply these settings to shared
spaces.


=head2 CustomFileSystemConfigs => ArrayRef[L<Paws::SageMaker::CustomFileSystemConfig>]

The settings for assigning a custom file system to a user profile.
Permitted users can access this file system in Amazon SageMaker AI
Studio.

SageMaker applies these settings only to private spaces that the user
creates in the domain. SageMaker doesn't apply these settings to shared
spaces.


=head2 CustomPosixUserConfig => L<Paws::SageMaker::CustomPosixUserConfig>

Details about the POSIX identity that is used for file system
operations.

SageMaker applies these settings only to private spaces that the user
creates in the domain. SageMaker doesn't apply these settings to shared
spaces.


=head2 DefaultLandingUri => Str

The default experience that the user is directed to when accessing the
domain. The supported values are:

=over

=item *

C<studio::>: Indicates that Studio is the default experience. This
value can only be passed if C<StudioWebPortal> is set to C<ENABLED>.

=item *

C<app:JupyterServer:>: Indicates that Studio Classic is the default
experience.

=back



=head2 ExecutionRole => Str

The execution role for the user.

SageMaker applies this setting only to private spaces that the user
creates in the domain. SageMaker doesn't apply this setting to shared
spaces.


=head2 JupyterLabAppSettings => L<Paws::SageMaker::JupyterLabAppSettings>

The settings for the JupyterLab application.

SageMaker applies these settings only to private spaces that the user
creates in the domain. SageMaker doesn't apply these settings to shared
spaces.


=head2 JupyterServerAppSettings => L<Paws::SageMaker::JupyterServerAppSettings>

The Jupyter server's app settings.


=head2 KernelGatewayAppSettings => L<Paws::SageMaker::KernelGatewayAppSettings>

The kernel gateway app settings.


=head2 RSessionAppSettings => L<Paws::SageMaker::RSessionAppSettings>

A collection of settings that configure the C<RSessionGateway> app.


=head2 RStudioServerProAppSettings => L<Paws::SageMaker::RStudioServerProAppSettings>

A collection of settings that configure user interaction with the
C<RStudioServerPro> app.


=head2 SecurityGroups => ArrayRef[Str|Undef]

The security groups for the Amazon Virtual Private Cloud (VPC) that the
domain uses for communication.

Optional when the C<CreateDomain.AppNetworkAccessType> parameter is set
to C<PublicInternetOnly>.

Required when the C<CreateDomain.AppNetworkAccessType> parameter is set
to C<VpcOnly>, unless specified as part of the C<DefaultUserSettings>
for the domain.

Amazon SageMaker AI adds a security group to allow NFS traffic from
Amazon SageMaker AI Studio. Therefore, the number of security groups
that you can specify is one less than the maximum number shown.

SageMaker applies these settings only to private spaces that the user
creates in the domain. SageMaker doesn't apply these settings to shared
spaces.


=head2 SharingSettings => L<Paws::SageMaker::SharingSettings>

Specifies options for sharing Amazon SageMaker AI Studio notebooks.


=head2 SpaceStorageSettings => L<Paws::SageMaker::DefaultSpaceStorageSettings>

The storage settings for a space.

SageMaker applies these settings only to private spaces that the user
creates in the domain. SageMaker doesn't apply these settings to shared
spaces.


=head2 StudioWebPortal => Str

Whether the user can access Studio. If this value is set to
C<DISABLED>, the user cannot access Studio, even if that is the default
experience for the domain.


=head2 StudioWebPortalSettings => L<Paws::SageMaker::StudioWebPortalSettings>

Studio settings. If these settings are applied on a user level, they
take priority over the settings applied on a domain level.


=head2 TensorBoardAppSettings => L<Paws::SageMaker::TensorBoardAppSettings>

The TensorBoard app settings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

