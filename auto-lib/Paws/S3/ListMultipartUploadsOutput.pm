
package Paws::S3::ListMultipartUploadsOutput;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str');
  has CommonPrefixes => (is => 'ro', isa => 'ArrayRef[Paws::S3::CommonPrefix]');
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has KeyMarker => (is => 'ro', isa => 'Str');
  has MaxUploads => (is => 'ro', isa => 'Int');
  has NextKeyMarker => (is => 'ro', isa => 'Str');
  has NextUploadIdMarker => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has UploadIdMarker => (is => 'ro', isa => 'Str');
  has Uploads => (is => 'ro', isa => 'ArrayRef[Paws::S3::MultipartUpload]', request_name => 'Upload', traits => ['NameInRequest']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListMultipartUploadsOutput

=head1 ATTRIBUTES


=head2 Bucket => Str

The name of the bucket to which the multipart upload was initiated.
Does not return the access point ARN or access point alias if used.



=head2 CommonPrefixes => ArrayRef[L<Paws::S3::CommonPrefix>]

If you specify a delimiter in the request, then the result returns each
distinct key prefix containing the delimiter in a C<CommonPrefixes>
element. The distinct key prefixes are returned in the C<Prefix> child
element.

B<Directory buckets> - For directory buckets, only prefixes that end in
a delimiter (C</>) are supported.



=head2 Delimiter => Str

Contains the delimiter you specified in the request. If you don't
specify a delimiter in your request, this element is absent from the
response.

B<Directory buckets> - For directory buckets, C</> is the only
supported delimiter.



=head2 EncodingType => Str

Encoding type used by Amazon S3 to encode object keys in the response.

If you specify the C<encoding-type> request parameter, Amazon S3
includes this element in the response, and returns encoded key name
values in the following response elements:

C<Delimiter>, C<KeyMarker>, C<Prefix>, C<NextKeyMarker>, C<Key>.

Valid values are: C<"url">

=head2 IsTruncated => Bool

Indicates whether the returned list of multipart uploads is truncated.
A value of true indicates that the list was truncated. The list can be
truncated if the number of multipart uploads exceeds the limit allowed
or specified by max uploads.



=head2 KeyMarker => Str

The key at or after which the listing began.



=head2 MaxUploads => Int

Maximum number of multipart uploads that could have been included in
the response.



=head2 NextKeyMarker => Str

When a list is truncated, this element specifies the value that should
be used for the key-marker request parameter in a subsequent request.



=head2 NextUploadIdMarker => Str

When a list is truncated, this element specifies the value that should
be used for the C<upload-id-marker> request parameter in a subsequent
request.

This functionality is not supported for directory buckets.



=head2 Prefix => Str

When a prefix is provided in the request, this field contains the
specified prefix. The result contains only keys starting with the
specified prefix.

B<Directory buckets> - For directory buckets, only prefixes that end in
a delimiter (C</>) are supported.



=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 UploadIdMarker => Str

Together with key-marker, specifies the multipart upload after which
listing should begin. If key-marker is not specified, the
upload-id-marker parameter is ignored. Otherwise, any multipart uploads
for a key equal to the key-marker might be included in the list only if
they have an upload ID lexicographically greater than the specified
C<upload-id-marker>.

This functionality is not supported for directory buckets.



=head2 Uploads => ArrayRef[L<Paws::S3::MultipartUpload>]

Container for elements related to a particular multipart upload. A
response can contain zero or more C<Upload> elements.




=cut

