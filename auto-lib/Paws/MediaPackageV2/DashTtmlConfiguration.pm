# Generated by default/object.tt
package Paws::MediaPackageV2::DashTtmlConfiguration;
  use Moose;
  has TtmlProfile => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::DashTtmlConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageV2::DashTtmlConfiguration object:

  $service_obj->Method(Att1 => { TtmlProfile => $value, ..., TtmlProfile => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageV2::DashTtmlConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->TtmlProfile

=head1 DESCRIPTION

The settings for TTML subtitles.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TtmlProfile => Str

The profile that MediaPackage uses when signaling subtitles in the
manifest. C<IMSC> is the default profile. C<EBU-TT-D> produces
subtitles that are compliant with the EBU-TT-D TTML profile.
MediaPackage passes through subtitle styles to the manifest. For more
information about EBU-TT-D subtitles, see EBU-TT-D Subtitling
Distribution Format (https://tech.ebu.ch/publications/tech3380).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

