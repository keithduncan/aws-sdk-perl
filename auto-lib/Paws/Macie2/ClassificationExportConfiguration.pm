# Generated by default/object.tt
package Paws::Macie2::ClassificationExportConfiguration;
  use Moose;
  has S3Destination => (is => 'ro', isa => 'Paws::Macie2::S3Destination', request_name => 's3Destination', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ClassificationExportConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::ClassificationExportConfiguration object:

  $service_obj->Method(Att1 => { S3Destination => $value, ..., S3Destination => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::ClassificationExportConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Destination

=head1 DESCRIPTION

Specifies where to store data classification results, and the
encryption settings to use when storing results in that location. The
location must be an S3 general purpose bucket.

=head1 ATTRIBUTES


=head2 S3Destination => L<Paws::Macie2::S3Destination>

The S3 bucket to store data classification results in, and the
encryption settings to use when storing results in that bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

