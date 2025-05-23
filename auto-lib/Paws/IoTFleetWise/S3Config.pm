# Generated by default/object.tt
package Paws::IoTFleetWise::S3Config;
  use Moose;
  has BucketArn => (is => 'ro', isa => 'Str', request_name => 'bucketArn', traits => ['NameInRequest'], required => 1);
  has DataFormat => (is => 'ro', isa => 'Str', request_name => 'dataFormat', traits => ['NameInRequest']);
  has Prefix => (is => 'ro', isa => 'Str', request_name => 'prefix', traits => ['NameInRequest']);
  has StorageCompressionFormat => (is => 'ro', isa => 'Str', request_name => 'storageCompressionFormat', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::S3Config

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTFleetWise::S3Config object:

  $service_obj->Method(Att1 => { BucketArn => $value, ..., StorageCompressionFormat => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTFleetWise::S3Config object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketArn

=head1 DESCRIPTION

The Amazon S3 bucket where the Amazon Web Services IoT FleetWise
campaign sends data. Amazon S3 is an object storage service that stores
data as objects within buckets. For more information, see Creating,
configuring, and working with Amazon S3 buckets
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-buckets-s3.html)
in the I<Amazon Simple Storage Service User Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketArn => Str

The Amazon Resource Name (ARN) of the Amazon S3 bucket.


=head2 DataFormat => Str

Specify the format that files are saved in the Amazon S3 bucket. You
can save files in an Apache Parquet or JSON format.

=over

=item *

Parquet - Store data in a columnar storage file format. Parquet is
optimal for fast data retrieval and can reduce costs. This option is
selected by default.

=item *

JSON - Store data in a standard text-based JSON file format.

=back



=head2 Prefix => Str

Enter an S3 bucket prefix. The prefix is the string of characters after
the bucket name and before the object name. You can use the prefix to
organize data stored in Amazon S3 buckets. For more information, see
Organizing objects using prefixes
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html)
in the I<Amazon Simple Storage Service User Guide>.

By default, Amazon Web Services IoT FleetWise sets the prefix
C<processed-data/year=YY/month=MM/date=DD/hour=HH/> (in UTC) to data it
delivers to Amazon S3. You can enter a prefix to append it to this
default prefix. For example, if you enter the prefix C<vehicles>, the
prefix will be
C<vehicles/processed-data/year=YY/month=MM/date=DD/hour=HH/>.


=head2 StorageCompressionFormat => Str

By default, stored data is compressed as a .gzip file. Compressed files
have a reduced file size, which can optimize the cost of data storage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

