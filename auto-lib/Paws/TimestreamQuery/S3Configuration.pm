# Generated by default/object.tt
package Paws::TimestreamQuery::S3Configuration;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionOption => (is => 'ro', isa => 'Str');
  has ObjectKeyPrefix => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::S3Configuration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TimestreamQuery::S3Configuration object:

  $service_obj->Method(Att1 => { BucketName => $value, ..., ObjectKeyPrefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TimestreamQuery::S3Configuration object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketName

=head1 DESCRIPTION

Details on S3 location for error reports that result from running a
query.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketName => Str

Name of the S3 bucket under which error reports will be created.


=head2 EncryptionOption => Str

Encryption at rest options for the error reports. If no encryption
option is specified, Timestream will choose SSE_S3 as default.


=head2 ObjectKeyPrefix => Str

Prefix for the error report key. Timestream by default adds the
following prefix to the error report path.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

