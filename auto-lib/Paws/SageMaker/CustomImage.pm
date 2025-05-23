# Generated by default/object.tt
package Paws::SageMaker::CustomImage;
  use Moose;
  has AppImageConfigName => (is => 'ro', isa => 'Str', required => 1);
  has ImageName => (is => 'ro', isa => 'Str', required => 1);
  has ImageVersionNumber => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CustomImage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::CustomImage object:

  $service_obj->Method(Att1 => { AppImageConfigName => $value, ..., ImageVersionNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::CustomImage object:

  $result = $service_obj->Method(...);
  $result->Att1->AppImageConfigName

=head1 DESCRIPTION

A custom SageMaker AI image. For more information, see Bring your own
SageMaker AI image
(https://docs.aws.amazon.com/sagemaker/latest/dg/studio-byoi.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppImageConfigName => Str

The name of the AppImageConfig.


=head2 B<REQUIRED> ImageName => Str

The name of the CustomImage. Must be unique to your account.


=head2 ImageVersionNumber => Int

The version number of the CustomImage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

