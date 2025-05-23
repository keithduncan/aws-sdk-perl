# Generated by default/object.tt
package Paws::Transfer::FileLocation;
  use Moose;
  has EfsFileLocation => (is => 'ro', isa => 'Paws::Transfer::EfsFileLocation');
  has S3FileLocation => (is => 'ro', isa => 'Paws::Transfer::S3FileLocation');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::FileLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::FileLocation object:

  $service_obj->Method(Att1 => { EfsFileLocation => $value, ..., S3FileLocation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::FileLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->EfsFileLocation

=head1 DESCRIPTION

Specifies the Amazon S3 or EFS file details to be used in the step.

=head1 ATTRIBUTES


=head2 EfsFileLocation => L<Paws::Transfer::EfsFileLocation>

Specifies the Amazon EFS identifier and the path for the file being
used.


=head2 S3FileLocation => L<Paws::Transfer::S3FileLocation>

Specifies the S3 details for the file being used, such as bucket, ETag,
and so forth.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

