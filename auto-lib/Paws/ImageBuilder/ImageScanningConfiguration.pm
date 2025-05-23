# Generated by default/object.tt
package Paws::ImageBuilder::ImageScanningConfiguration;
  use Moose;
  has EcrConfiguration => (is => 'ro', isa => 'Paws::ImageBuilder::EcrConfiguration', request_name => 'ecrConfiguration', traits => ['NameInRequest']);
  has ImageScanningEnabled => (is => 'ro', isa => 'Bool', request_name => 'imageScanningEnabled', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ImageScanningConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::ImageScanningConfiguration object:

  $service_obj->Method(Att1 => { EcrConfiguration => $value, ..., ImageScanningEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::ImageScanningConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->EcrConfiguration

=head1 DESCRIPTION

Contains settings for Image Builder image resource and container image
scans.

=head1 ATTRIBUTES


=head2 EcrConfiguration => L<Paws::ImageBuilder::EcrConfiguration>

Contains Amazon ECR settings for vulnerability scans.


=head2 ImageScanningEnabled => Bool

A setting that indicates whether Image Builder keeps a snapshot of the
vulnerability scans that Amazon Inspector runs against the build
instance when you create a new image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

