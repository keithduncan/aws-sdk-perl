
package Paws::MediaPackage::UpdateOriginEndpointResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Authorization => (is => 'ro', isa => 'Paws::MediaPackage::Authorization', traits => ['NameInRequest'], request_name => 'authorization');
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelId');
  has CmafPackage => (is => 'ro', isa => 'Paws::MediaPackage::CmafPackage', traits => ['NameInRequest'], request_name => 'cmafPackage');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DashPackage => (is => 'ro', isa => 'Paws::MediaPackage::DashPackage', traits => ['NameInRequest'], request_name => 'dashPackage');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has HlsPackage => (is => 'ro', isa => 'Paws::MediaPackage::HlsPackage', traits => ['NameInRequest'], request_name => 'hlsPackage');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has ManifestName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'manifestName');
  has MssPackage => (is => 'ro', isa => 'Paws::MediaPackage::MssPackage', traits => ['NameInRequest'], request_name => 'mssPackage');
  has Origination => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'origination');
  has StartoverWindowSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'startoverWindowSeconds');
  has Tags => (is => 'ro', isa => 'Paws::MediaPackage::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has TimeDelaySeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeDelaySeconds');
  has Url => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'url');
  has Whitelist => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'whitelist');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::UpdateOriginEndpointResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) assigned to the OriginEndpoint.


=head2 Authorization => L<Paws::MediaPackage::Authorization>




=head2 ChannelId => Str

The ID of the Channel the OriginEndpoint is associated with.


=head2 CmafPackage => L<Paws::MediaPackage::CmafPackage>




=head2 CreatedAt => Str

The date and time the OriginEndpoint was created.


=head2 DashPackage => L<Paws::MediaPackage::DashPackage>




=head2 Description => Str

A short text description of the OriginEndpoint.


=head2 HlsPackage => L<Paws::MediaPackage::HlsPackage>




=head2 Id => Str

The ID of the OriginEndpoint.


=head2 ManifestName => Str

A short string appended to the end of the OriginEndpoint URL.


=head2 MssPackage => L<Paws::MediaPackage::MssPackage>




=head2 Origination => Str

Control whether origination of video is allowed for this
OriginEndpoint. If set to ALLOW, the OriginEndpoint may by requested,
pursuant to any other form of access control. If set to DENY, the
OriginEndpoint may not be requested. This can be helpful for Live to
VOD harvesting, or for temporarily disabling origination

Valid values are: C<"ALLOW">, C<"DENY">
=head2 StartoverWindowSeconds => Int

Maximum duration (seconds) of content to retain for startover playback.
If not specified, startover playback will be disabled for the
OriginEndpoint.


=head2 Tags => L<Paws::MediaPackage::Tags>




=head2 TimeDelaySeconds => Int

Amount of delay (seconds) to enforce on the playback of live content.
If not specified, there will be no time delay in effect for the
OriginEndpoint.


=head2 Url => Str

The URL of the packaged OriginEndpoint for consumption.


=head2 Whitelist => ArrayRef[Str|Undef]

A list of source IP CIDR blocks that will be allowed to access the
OriginEndpoint.


=head2 _request_id => Str


=cut

