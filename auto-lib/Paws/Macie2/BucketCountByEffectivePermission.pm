# Generated by default/object.tt
package Paws::Macie2::BucketCountByEffectivePermission;
  use Moose;
  has PubliclyAccessible => (is => 'ro', isa => 'Int', request_name => 'publiclyAccessible', traits => ['NameInRequest']);
  has PubliclyReadable => (is => 'ro', isa => 'Int', request_name => 'publiclyReadable', traits => ['NameInRequest']);
  has PubliclyWritable => (is => 'ro', isa => 'Int', request_name => 'publiclyWritable', traits => ['NameInRequest']);
  has Unknown => (is => 'ro', isa => 'Int', request_name => 'unknown', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::BucketCountByEffectivePermission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::BucketCountByEffectivePermission object:

  $service_obj->Method(Att1 => { PubliclyAccessible => $value, ..., Unknown => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::BucketCountByEffectivePermission object:

  $result = $service_obj->Method(...);
  $result->Att1->PubliclyAccessible

=head1 DESCRIPTION

Provides information about the number of S3 buckets that are publicly
accessible due to a combination of permissions settings for each
bucket.

=head1 ATTRIBUTES


=head2 PubliclyAccessible => Int

The total number of buckets that allow the general public to have read
or write access to the bucket.


=head2 PubliclyReadable => Int

The total number of buckets that allow the general public to have read
access to the bucket.


=head2 PubliclyWritable => Int

The total number of buckets that allow the general public to have write
access to the bucket.


=head2 Unknown => Int

The total number of buckets that Amazon Macie wasn't able to evaluate
permissions settings for. For example, the buckets' policies or a quota
prevented Macie from retrieving the requisite data. Macie can't
determine whether the buckets are publicly accessible.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

