# Generated by default/object.tt
package Paws::Kendra::TableRow;
  use Moose;
  has Cells => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::TableCell]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::TableRow

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::TableRow object:

  $service_obj->Method(Att1 => { Cells => $value, ..., Cells => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::TableRow object:

  $result = $service_obj->Method(...);
  $result->Att1->Cells

=head1 DESCRIPTION

Information about a row in a table excerpt.

=head1 ATTRIBUTES


=head2 Cells => ArrayRef[L<Paws::Kendra::TableCell>]

A list of table cells in a row.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

