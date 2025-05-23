# Generated by default/object.tt
package Paws::GlueDataBrew::S3Location;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has BucketOwner => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::S3Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GlueDataBrew::S3Location object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., Key => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GlueDataBrew::S3Location object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

Represents an Amazon S3 location (bucket name, bucket owner, and object
key) where DataBrew can read input data, or write output from a job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The Amazon S3 bucket name.


=head2 BucketOwner => Str

The Amazon Web Services account ID of the bucket owner.


=head2 Key => Str

The unique name of the object in the bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

