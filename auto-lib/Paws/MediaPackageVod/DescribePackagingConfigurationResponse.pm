
package Paws::MediaPackageVod::DescribePackagingConfigurationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CmafPackage => (is => 'ro', isa => 'Paws::MediaPackageVod::CmafPackage', traits => ['NameInRequest'], request_name => 'cmafPackage');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DashPackage => (is => 'ro', isa => 'Paws::MediaPackageVod::DashPackage', traits => ['NameInRequest'], request_name => 'dashPackage');
  has HlsPackage => (is => 'ro', isa => 'Paws::MediaPackageVod::HlsPackage', traits => ['NameInRequest'], request_name => 'hlsPackage');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has MssPackage => (is => 'ro', isa => 'Paws::MediaPackageVod::MssPackage', traits => ['NameInRequest'], request_name => 'mssPackage');
  has PackagingGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'packagingGroupId');
  has Tags => (is => 'ro', isa => 'Paws::MediaPackageVod::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::DescribePackagingConfigurationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the PackagingConfiguration.


=head2 CmafPackage => L<Paws::MediaPackageVod::CmafPackage>




=head2 CreatedAt => Str

The time the PackagingConfiguration was created.


=head2 DashPackage => L<Paws::MediaPackageVod::DashPackage>




=head2 HlsPackage => L<Paws::MediaPackageVod::HlsPackage>




=head2 Id => Str

The ID of the PackagingConfiguration.


=head2 MssPackage => L<Paws::MediaPackageVod::MssPackage>




=head2 PackagingGroupId => Str

The ID of a PackagingGroup.


=head2 Tags => L<Paws::MediaPackageVod::Tags>




=head2 _request_id => Str


=cut

