# Generated by default/object.tt
package Paws::SecurityHub::AwsS3AccessPointDetails;
  use Moose;
  has AccessPointArn => (is => 'ro', isa => 'Str');
  has Alias => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str');
  has BucketAccountId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NetworkOrigin => (is => 'ro', isa => 'Str');
  has PublicAccessBlockConfiguration => (is => 'ro', isa => 'Paws::SecurityHub::AwsS3AccountPublicAccessBlockDetails');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::SecurityHub::AwsS3AccessPointVpcConfigurationDetails');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsS3AccessPointDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsS3AccessPointDetails object:

  $service_obj->Method(Att1 => { AccessPointArn => $value, ..., VpcConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsS3AccessPointDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessPointArn

=head1 DESCRIPTION

Returns configuration information about the specified Amazon S3 access
point. S3 access points are named network endpoints that are attached
to buckets that you can use to perform S3 object operations.

=head1 ATTRIBUTES


=head2 AccessPointArn => Str

The Amazon Resource Name (ARN) of the access point.


=head2 Alias => Str

The name or alias of the access point.


=head2 Bucket => Str

The name of the S3 bucket associated with the specified access point.


=head2 BucketAccountId => Str

The Amazon Web Services account ID associated with the S3 bucket
associated with this access point.


=head2 Name => Str

The name of the specified access point.


=head2 NetworkOrigin => Str

Indicates whether this access point allows access from the public
internet.


=head2 PublicAccessBlockConfiguration => L<Paws::SecurityHub::AwsS3AccountPublicAccessBlockDetails>




=head2 VpcConfiguration => L<Paws::SecurityHub::AwsS3AccessPointVpcConfigurationDetails>

Contains the virtual private cloud (VPC) configuration for the
specified access point.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

