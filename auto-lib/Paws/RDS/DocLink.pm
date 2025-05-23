# Generated by default/object.tt
package Paws::RDS::DocLink;
  use Moose;
  has Text => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DocLink

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DocLink object:

  $service_obj->Method(Att1 => { Text => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DocLink object:

  $result = $service_obj->Method(...);
  $result->Att1->Text

=head1 DESCRIPTION

A link to documentation that provides additional information for a
recommendation.

=head1 ATTRIBUTES


=head2 Text => Str

The text with the link to documentation for the recommendation.


=head2 Url => Str

The URL for the documentation for the recommendation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

