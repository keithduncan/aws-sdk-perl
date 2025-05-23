# Generated by default/object.tt
package Paws::SecurityHub::AwsS3BucketLoggingConfiguration;
  use Moose;
  has DestinationBucketName => (is => 'ro', isa => 'Str');
  has LogFilePrefix => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsS3BucketLoggingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsS3BucketLoggingConfiguration object:

  $service_obj->Method(Att1 => { DestinationBucketName => $value, ..., LogFilePrefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsS3BucketLoggingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationBucketName

=head1 DESCRIPTION

Information about logging for the S3 bucket

=head1 ATTRIBUTES


=head2 DestinationBucketName => Str

The name of the S3 bucket where log files for the S3 bucket are stored.


=head2 LogFilePrefix => Str

The prefix added to log files for the S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

