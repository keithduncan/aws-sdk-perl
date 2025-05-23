# Generated by default/object.tt
package Paws::SecurityHub::AwsS3AccountPublicAccessBlockDetails;
  use Moose;
  has BlockPublicAcls => (is => 'ro', isa => 'Bool');
  has BlockPublicPolicy => (is => 'ro', isa => 'Bool');
  has IgnorePublicAcls => (is => 'ro', isa => 'Bool');
  has RestrictPublicBuckets => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsS3AccountPublicAccessBlockDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsS3AccountPublicAccessBlockDetails object:

  $service_obj->Method(Att1 => { BlockPublicAcls => $value, ..., RestrictPublicBuckets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsS3AccountPublicAccessBlockDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockPublicAcls

=head1 DESCRIPTION

provides information about the Amazon S3 Public Access Block
configuration for accounts.

=head1 ATTRIBUTES


=head2 BlockPublicAcls => Bool

Indicates whether to reject calls to update an S3 bucket if the calls
include a public access control list (ACL).


=head2 BlockPublicPolicy => Bool

Indicates whether to reject calls to update the access policy for an S3
bucket or access point if the policy allows public access.


=head2 IgnorePublicAcls => Bool

Indicates whether Amazon S3 ignores public ACLs that are associated
with an S3 bucket.


=head2 RestrictPublicBuckets => Bool

Indicates whether to restrict access to an access point or S3 bucket
that has a public policy to only Amazon Web Services service principals
and authorized users within the S3 bucket owner's account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

