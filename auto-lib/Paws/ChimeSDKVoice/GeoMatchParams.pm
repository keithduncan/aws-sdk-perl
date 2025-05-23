# Generated by default/object.tt
package Paws::ChimeSDKVoice::GeoMatchParams;
  use Moose;
  has AreaCode => (is => 'ro', isa => 'Str', required => 1);
  has Country => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GeoMatchParams

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ChimeSDKVoice::GeoMatchParams object:

  $service_obj->Method(Att1 => { AreaCode => $value, ..., Country => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ChimeSDKVoice::GeoMatchParams object:

  $result = $service_obj->Method(...);
  $result->Att1->AreaCode

=head1 DESCRIPTION

The country and area code for a proxy phone number in a proxy phone
session.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AreaCode => Str

The area code.


=head2 B<REQUIRED> Country => Str

The country.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

