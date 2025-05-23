# Generated by default/object.tt
package Paws::S3::LocationInfo;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::LocationInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::LocationInfo object:

  $service_obj->Method(Att1 => { Name => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::LocationInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Specifies the location where the bucket will be created.

For directory buckets, the location type is Availability Zone or Local
Zone. For more information about directory buckets, see Working with
directory buckets
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html)
in the I<Amazon S3 User Guide>.

This functionality is only supported by directory buckets.

=head1 ATTRIBUTES


=head2 Name => Str

The name of the location where the bucket will be created.

For directory buckets, the name of the location is the Zone ID of the
Availability Zone (AZ) or Local Zone (LZ) where the bucket will be
created. An example AZ ID value is C<usw2-az1>.


=head2 Type => Str

The type of location where the bucket will be created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

