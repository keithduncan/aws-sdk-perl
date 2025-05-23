# Generated by default/object.tt
package Paws::SecurityHub::AssociationStateDetails;
  use Moose;
  has State => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AssociationStateDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AssociationStateDetails object:

  $service_obj->Method(Att1 => { State => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AssociationStateDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->State

=head1 DESCRIPTION

Describes the state of an association between a route table and a
subnet or gateway.

=head1 ATTRIBUTES


=head2 State => Str

The state of the association.


=head2 StatusMessage => Str

The status message, if applicable.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

