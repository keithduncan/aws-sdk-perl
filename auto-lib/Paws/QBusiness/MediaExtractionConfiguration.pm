# Generated by default/object.tt
package Paws::QBusiness::MediaExtractionConfiguration;
  use Moose;
  has AudioExtractionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::AudioExtractionConfiguration', request_name => 'audioExtractionConfiguration', traits => ['NameInRequest']);
  has ImageExtractionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::ImageExtractionConfiguration', request_name => 'imageExtractionConfiguration', traits => ['NameInRequest']);
  has VideoExtractionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::VideoExtractionConfiguration', request_name => 'videoExtractionConfiguration', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::MediaExtractionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QBusiness::MediaExtractionConfiguration object:

  $service_obj->Method(Att1 => { AudioExtractionConfiguration => $value, ..., VideoExtractionConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QBusiness::MediaExtractionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioExtractionConfiguration

=head1 DESCRIPTION

The configuration for extracting information from media in documents.

=head1 ATTRIBUTES


=head2 AudioExtractionConfiguration => L<Paws::QBusiness::AudioExtractionConfiguration>

Configuration settings for extracting and processing audio content from
media files.


=head2 ImageExtractionConfiguration => L<Paws::QBusiness::ImageExtractionConfiguration>

The configuration for extracting semantic meaning from images in
documents. For more information, see Extracting semantic meaning from
images and visuals
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/extracting-meaning-from-images.html).


=head2 VideoExtractionConfiguration => L<Paws::QBusiness::VideoExtractionConfiguration>

Configuration settings for extracting and processing video content from
media files.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

