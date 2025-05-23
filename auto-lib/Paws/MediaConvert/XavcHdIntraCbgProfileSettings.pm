# Generated by default/object.tt
package Paws::MediaConvert::XavcHdIntraCbgProfileSettings;
  use Moose;
  has XavcClass => (is => 'ro', isa => 'Str', request_name => 'xavcClass', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::XavcHdIntraCbgProfileSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::XavcHdIntraCbgProfileSettings object:

  $service_obj->Method(Att1 => { XavcClass => $value, ..., XavcClass => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::XavcHdIntraCbgProfileSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->XavcClass

=head1 DESCRIPTION

Required when you set Profile to the value XAVC_HD_INTRA_CBG.

=head1 ATTRIBUTES


=head2 XavcClass => Str

Specify the XAVC Intra HD (CBG) Class to set the bitrate of your
output. Outputs of the same class have similar image quality over the
operating points that are valid for that class.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

