# Generated by default/object.tt
package Paws::SageMakerGeospatial::ExportS3DataInput;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has S3Uri => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::ExportS3DataInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMakerGeospatial::ExportS3DataInput object:

  $service_obj->Method(Att1 => { KmsKeyId => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMakerGeospatial::ExportS3DataInput object:

  $result = $service_obj->Method(...);
  $result->Att1->KmsKeyId

=head1 DESCRIPTION

The structure containing the Amazon S3 path to export the Earth
Observation job output.

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

The Key Management Service key ID for server-side encryption.


=head2 B<REQUIRED> S3Uri => Str

The URL to the Amazon S3 data input.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

