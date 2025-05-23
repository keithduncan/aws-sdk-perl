# Generated by default/object.tt
package Paws::CustomerProfiles::S3ExportingConfig;
  use Moose;
  has S3BucketName => (is => 'ro', isa => 'Str', required => 1);
  has S3KeyName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::S3ExportingConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CustomerProfiles::S3ExportingConfig object:

  $service_obj->Method(Att1 => { S3BucketName => $value, ..., S3KeyName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CustomerProfiles::S3ExportingConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->S3BucketName

=head1 DESCRIPTION

Configuration information about the S3 bucket where Identity Resolution
Jobs write result files.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3BucketName => Str

The name of the S3 bucket where Identity Resolution Jobs write result
files.


=head2 S3KeyName => Str

The S3 key name of the location where Identity Resolution Jobs write
result files.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

