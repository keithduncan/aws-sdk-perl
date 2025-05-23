
package Paws::WorkSpacesWeb::CreateIpAccessSettings;
  use Moose;
  has AdditionalEncryptionContext => (is => 'ro', isa => 'Paws::WorkSpacesWeb::EncryptionContextMap', traits => ['NameInRequest'], request_name => 'additionalEncryptionContext');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CustomerManagedKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerManagedKey');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has IpRules => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpacesWeb::IpRule]', traits => ['NameInRequest'], request_name => 'ipRules', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpacesWeb::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIpAccessSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ipAccessSettings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::CreateIpAccessSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::CreateIpAccessSettings - Arguments for method CreateIpAccessSettings on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIpAccessSettings on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method CreateIpAccessSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIpAccessSettings.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $CreateIpAccessSettingsResponse =
      $workspaces -web->CreateIpAccessSettings(
      IpRules => [
        {
          IpRange     => 'MyIpRange',
          Description => 'MyDescription',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],
      AdditionalEncryptionContext => {
        'MyStringType' => 'MyStringType', # key: max: 131072, value: max: 131072
      },    # OPTIONAL
      ClientToken        => 'MyClientToken',    # OPTIONAL
      CustomerManagedKey => 'MykeyArn',         # OPTIONAL
      Description        => 'MyDescription',    # OPTIONAL
      DisplayName        => 'MyDisplayName',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $IpAccessSettingsArn =
      $CreateIpAccessSettingsResponse->IpAccessSettingsArn;

    # Returns a L<Paws::WorkSpacesWeb::CreateIpAccessSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/CreateIpAccessSettings>

=head1 ATTRIBUTES


=head2 AdditionalEncryptionContext => L<Paws::WorkSpacesWeb::EncryptionContextMap>

Additional encryption context of the IP access settings.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original
request completes successfully, subsequent retries with the same client
token returns the result from the original successful request.

If you do not specify a client token, one is automatically generated by
the Amazon Web Services SDK.



=head2 CustomerManagedKey => Str

The custom managed key of the IP access settings.



=head2 Description => Str

The description of the IP access settings.



=head2 DisplayName => Str

The display name of the IP access settings.



=head2 B<REQUIRED> IpRules => ArrayRef[L<Paws::WorkSpacesWeb::IpRule>]

The IP rules of the IP access settings.



=head2 Tags => ArrayRef[L<Paws::WorkSpacesWeb::Tag>]

The tags to add to the IP access settings resource. A tag is a
key-value pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIpAccessSettings in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

