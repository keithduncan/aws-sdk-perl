# Generated by default/object.tt
package Paws::MediaPackageV2::SpekeKeyProvider;
  use Moose;
  has DrmSystems => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has EncryptionContractConfiguration => (is => 'ro', isa => 'Paws::MediaPackageV2::EncryptionContractConfiguration', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Url => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::SpekeKeyProvider

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageV2::SpekeKeyProvider object:

  $service_obj->Method(Att1 => { DrmSystems => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageV2::SpekeKeyProvider object:

  $result = $service_obj->Method(...);
  $result->Att1->DrmSystems

=head1 DESCRIPTION

The parameters for the SPEKE key provider.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DrmSystems => ArrayRef[Str|Undef]

The DRM solution provider you're using to protect your content during
distribution.


=head2 B<REQUIRED> EncryptionContractConfiguration => L<Paws::MediaPackageV2::EncryptionContractConfiguration>

Configure one or more content encryption keys for your endpoints that
use SPEKE Version 2.0. The encryption contract defines which content
keys are used to encrypt the audio and video tracks in your stream. To
configure the encryption contract, specify which audio and video
encryption presets to use.


=head2 B<REQUIRED> ResourceId => Str

The unique identifier for the content. The service sends this to the
key server to identify the current endpoint. How unique you make this
depends on how fine-grained you want access controls to be. The service
does not permit you to use the same ID for two simultaneous encryption
processes. The resource ID is also known as the content ID.

The following example shows a resource ID: C<MovieNight20171126093045>


=head2 B<REQUIRED> RoleArn => Str

The ARN for the IAM role granted by the key provider that provides
access to the key provider API. This role must have a trust policy that
allows MediaPackage to assume the role, and it must have a sufficient
permissions policy to allow access to the specific key retrieval URL.
Get this from your DRM solution provider.

Valid format: C<arn:aws:iam::{accountID}:role/{name}>. The following
example shows a role ARN: C<arn:aws:iam::444455556666:role/SpekeAccess>


=head2 B<REQUIRED> Url => Str

The URL of the API Gateway proxy that you set up to talk to your key
server. The API Gateway proxy must reside in the same AWS Region as
MediaPackage and must start with https://.

The following example shows a URL:
C<https://1wm2dx1f33.execute-api.us-west-2.amazonaws.com/SpekeSample/copyProtection>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

