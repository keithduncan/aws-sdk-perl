# Generated by default/object.tt
package Paws::CloudFront::ValidationTokenDetail;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', required => 1);
  has RedirectFrom => (is => 'ro', isa => 'Str');
  has RedirectTo => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ValidationTokenDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::ValidationTokenDetail object:

  $service_obj->Method(Att1 => { Domain => $value, ..., RedirectTo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::ValidationTokenDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Domain

=head1 DESCRIPTION

Contains details about the validation token.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The domain name.


=head2 RedirectFrom => Str

The domain to redirect from.


=head2 RedirectTo => Str

The domain to redirect to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

