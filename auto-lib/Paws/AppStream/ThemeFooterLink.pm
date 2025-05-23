# Generated by default/object.tt
package Paws::AppStream::ThemeFooterLink;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str');
  has FooterLinkURL => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::ThemeFooterLink

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::ThemeFooterLink object:

  $service_obj->Method(Att1 => { DisplayName => $value, ..., FooterLinkURL => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::ThemeFooterLink object:

  $result = $service_obj->Method(...);
  $result->Att1->DisplayName

=head1 DESCRIPTION

The website links that display in the catalog page footer.

=head1 ATTRIBUTES


=head2 DisplayName => Str

The name of the websites that display in the catalog page footer.


=head2 FooterLinkURL => Str

The URL of the websites that display in the catalog page footer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

