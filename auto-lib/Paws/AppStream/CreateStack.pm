
package Paws::AppStream::CreateStack;
  use Moose;
  has AccessEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::AccessEndpoint]');
  has ApplicationSettings => (is => 'ro', isa => 'Paws::AppStream::ApplicationSettings');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has EmbedHostDomains => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has FeedbackURL => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RedirectURL => (is => 'ro', isa => 'Str');
  has StorageConnectors => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::StorageConnector]');
  has StreamingExperienceSettings => (is => 'ro', isa => 'Paws::AppStream::StreamingExperienceSettings');
  has Tags => (is => 'ro', isa => 'Paws::AppStream::Tags');
  has UserSettings => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::UserSetting]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateStackResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateStack - Arguments for method CreateStack on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStack on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method CreateStack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStack.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $CreateStackResult = $appstream2->CreateStack(
      Name            => 'MyName',
      AccessEndpoints => [
        {
          EndpointType => 'STREAMING',    # values: STREAMING
          VpceId       => 'MyString',     # min: 1; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ApplicationSettings => {
        Enabled       => 1,
        SettingsGroup => 'MySettingsGroup',    # max: 100; OPTIONAL
      },    # OPTIONAL
      Description      => 'MyDescription',    # OPTIONAL
      DisplayName      => 'MyDisplayName',    # OPTIONAL
      EmbedHostDomains => [
        'MyEmbedHostDomain', ...              # max: 128
      ],    # OPTIONAL
      FeedbackURL       => 'MyFeedbackURL',    # OPTIONAL
      RedirectURL       => 'MyRedirectURL',    # OPTIONAL
      StorageConnectors => [
        {
          ConnectorType =>
            'HOMEFOLDERS',    # values: HOMEFOLDERS, GOOGLE_DRIVE, ONE_DRIVE
          Domains => [
            'MyDomain', ...    # min: 1, max: 64
          ],    # max: 50; OPTIONAL
          DomainsRequireAdminConsent => [
            'MyDomain', ...    # min: 1, max: 64
          ],    # max: 50; OPTIONAL
          ResourceIdentifier =>
            'MyResourceIdentifier',    # min: 1, max: 2048; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      StreamingExperienceSettings => {
        PreferredProtocol => 'TCP',    # values: TCP, UDP; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      UserSettings => [
        {
          Action => 'CLIPBOARD_COPY_FROM_LOCAL_DEVICE'
          , # values: CLIPBOARD_COPY_FROM_LOCAL_DEVICE, CLIPBOARD_COPY_TO_LOCAL_DEVICE, FILE_UPLOAD, FILE_DOWNLOAD, PRINTING_TO_LOCAL_DEVICE, DOMAIN_PASSWORD_SIGNIN, DOMAIN_SMART_CARD_SIGNIN, AUTO_TIME_ZONE_REDIRECTION
          Permission    => 'ENABLED',    # values: ENABLED, DISABLED
          MaximumLength => 1,            # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Stack = $CreateStackResult->Stack;

    # Returns a L<Paws::AppStream::CreateStackResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/CreateStack>

=head1 ATTRIBUTES


=head2 AccessEndpoints => ArrayRef[L<Paws::AppStream::AccessEndpoint>]

The list of interface VPC endpoint (interface endpoint) objects. Users
of the stack can connect to AppStream 2.0 only through the specified
endpoints.



=head2 ApplicationSettings => L<Paws::AppStream::ApplicationSettings>

The persistent application settings for users of a stack. When these
settings are enabled, changes that users make to applications and
Windows settings are automatically saved after each session and applied
to the next session.



=head2 Description => Str

The description to display.



=head2 DisplayName => Str

The stack name to display.



=head2 EmbedHostDomains => ArrayRef[Str|Undef]

The domains where AppStream 2.0 streaming sessions can be embedded in
an iframe. You must approve the domains that you want to host embedded
AppStream 2.0 streaming sessions.



=head2 FeedbackURL => Str

The URL that users are redirected to after they click the Send Feedback
link. If no URL is specified, no Send Feedback link is displayed.



=head2 B<REQUIRED> Name => Str

The name of the stack.



=head2 RedirectURL => Str

The URL that users are redirected to after their streaming session
ends.



=head2 StorageConnectors => ArrayRef[L<Paws::AppStream::StorageConnector>]

The storage connectors to enable.



=head2 StreamingExperienceSettings => L<Paws::AppStream::StreamingExperienceSettings>

The streaming protocol you want your stack to prefer. This can be UDP
or TCP. Currently, UDP is only supported in the Windows native client.



=head2 Tags => L<Paws::AppStream::Tags>

The tags to associate with the stack. A tag is a key-value pair, and
the value is optional. For example, Environment=Test. If you do not
specify a value, Environment=.

If you do not specify a value, the value is set to an empty string.

Generally allowed characters are: letters, numbers, and spaces
representable in UTF-8, and the following special characters:

_ . : / = + \ - @

For more information about tags, see Tagging Your Resources
(https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
in the I<Amazon AppStream 2.0 Administration Guide>.



=head2 UserSettings => ArrayRef[L<Paws::AppStream::UserSetting>]

The actions that are enabled or disabled for users during their
streaming sessions. By default, these actions are enabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStack in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

