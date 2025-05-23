
package Paws::DataExchange::CreateDataSetResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AssetType => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Origin => (is => 'ro', isa => 'Str');
  has OriginDetails => (is => 'ro', isa => 'Paws::DataExchange::OriginDetails');
  has SourceId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::DataExchange::MapOf__string');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::CreateDataSetResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN for the data set.


=head2 AssetType => Str

The type of asset that is added to a data set.

Valid values are: C<"S3_SNAPSHOT">, C<"REDSHIFT_DATA_SHARE">, C<"API_GATEWAY_API">, C<"S3_DATA_ACCESS">, C<"LAKE_FORMATION_DATA_PERMISSION">
=head2 CreatedAt => Str

The date and time that the data set was created, in ISO 8601 format.


=head2 Description => Str

The description for the data set.


=head2 Id => Str

The unique identifier for the data set.


=head2 Name => Str

The name of the data set.


=head2 Origin => Str

A property that defines the data set as OWNED by the account (for
providers) or ENTITLED to the account (for subscribers).

Valid values are: C<"OWNED">, C<"ENTITLED">
=head2 OriginDetails => L<Paws::DataExchange::OriginDetails>

If the origin of this data set is ENTITLED, includes the details for
the product on AWS Marketplace.


=head2 SourceId => Str

The data set ID of the owned data set corresponding to the entitled
data set being viewed. This parameter is returned when a data set owner
is viewing the entitled copy of its owned data set.


=head2 Tags => L<Paws::DataExchange::MapOf__string>

The tags for the data set.


=head2 UpdatedAt => Str

The date and time that the data set was last updated, in ISO 8601
format.


=head2 _request_id => Str


=cut

