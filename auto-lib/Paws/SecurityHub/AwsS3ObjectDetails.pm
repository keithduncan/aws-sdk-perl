# Generated by default/object.tt
package Paws::SecurityHub::AwsS3ObjectDetails;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str');
  has ETag => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSEKMSKeyId => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsS3ObjectDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsS3ObjectDetails object:

  $service_obj->Method(Att1 => { ContentType => $value, ..., VersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsS3ObjectDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ContentType

=head1 DESCRIPTION

Details about an Amazon S3 object.

=head1 ATTRIBUTES


=head2 ContentType => Str

A standard MIME type describing the format of the object data.


=head2 ETag => Str

The opaque identifier assigned by a web server to a specific version of
a resource found at a URL.


=head2 LastModified => Str

Indicates when the object was last modified.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).


=head2 ServerSideEncryption => Str

If the object is stored using server-side encryption, the value of the
server-side encryption algorithm used when storing this object in
Amazon S3.


=head2 SSEKMSKeyId => Str

The identifier of the KMS symmetric customer managed key that was used
for the object.


=head2 VersionId => Str

The version of the object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

