# Generated by default/object.tt
package Paws::Bedrock::ModelInvocationJobS3InputDataConfig;
  use Moose;
  has S3BucketOwner => (is => 'ro', isa => 'Str', request_name => 's3BucketOwner', traits => ['NameInRequest']);
  has S3InputFormat => (is => 'ro', isa => 'Str', request_name => 's3InputFormat', traits => ['NameInRequest']);
  has S3Uri => (is => 'ro', isa => 'Str', request_name => 's3Uri', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ModelInvocationJobS3InputDataConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Bedrock::ModelInvocationJobS3InputDataConfig object:

  $service_obj->Method(Att1 => { S3BucketOwner => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Bedrock::ModelInvocationJobS3InputDataConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->S3BucketOwner

=head1 DESCRIPTION

Contains the configuration of the S3 location of the input data.

=head1 ATTRIBUTES


=head2 S3BucketOwner => Str

The ID of the Amazon Web Services account that owns the S3 bucket
containing the input data.


=head2 S3InputFormat => Str

The format of the input data.


=head2 B<REQUIRED> S3Uri => Str

The S3 location of the input data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

