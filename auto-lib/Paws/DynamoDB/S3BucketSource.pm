# Generated by default/object.tt
package Paws::DynamoDB::S3BucketSource;
  use Moose;
  has S3Bucket => (is => 'ro', isa => 'Str', required => 1);
  has S3BucketOwner => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::S3BucketSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::S3BucketSource object:

  $service_obj->Method(Att1 => { S3Bucket => $value, ..., S3KeyPrefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::S3BucketSource object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Bucket

=head1 DESCRIPTION

The S3 bucket that is being imported from.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3Bucket => Str

The S3 bucket that is being imported from.


=head2 S3BucketOwner => Str

The account number of the S3 bucket that is being imported from. If the
bucket is owned by the requester this is optional.


=head2 S3KeyPrefix => Str

The key prefix shared by all S3 Objects that are being imported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

