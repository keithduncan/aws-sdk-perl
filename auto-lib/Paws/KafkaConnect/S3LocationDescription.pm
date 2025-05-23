# Generated by default/object.tt
package Paws::KafkaConnect::S3LocationDescription;
  use Moose;
  has BucketArn => (is => 'ro', isa => 'Str', request_name => 'bucketArn', traits => ['NameInRequest']);
  has FileKey => (is => 'ro', isa => 'Str', request_name => 'fileKey', traits => ['NameInRequest']);
  has ObjectVersion => (is => 'ro', isa => 'Str', request_name => 'objectVersion', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::S3LocationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KafkaConnect::S3LocationDescription object:

  $service_obj->Method(Att1 => { BucketArn => $value, ..., ObjectVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KafkaConnect::S3LocationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketArn

=head1 DESCRIPTION

The description of the location of an object in Amazon S3.

=head1 ATTRIBUTES


=head2 BucketArn => Str

The Amazon Resource Name (ARN) of an S3 bucket.


=head2 FileKey => Str

The file key for an object in an S3 bucket.


=head2 ObjectVersion => Str

The version of an object in an S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

