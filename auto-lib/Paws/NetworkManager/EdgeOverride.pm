# Generated by default/object.tt
package Paws::NetworkManager::EdgeOverride;
  use Moose;
  has EdgeSets => (is => 'ro', isa => 'ArrayRef[ArrayRef[Str|Undef]]');
  has UseEdge => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::EdgeOverride

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkManager::EdgeOverride object:

  $service_obj->Method(Att1 => { EdgeSets => $value, ..., UseEdge => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkManager::EdgeOverride object:

  $result = $service_obj->Method(...);
  $result->Att1->EdgeSets

=head1 DESCRIPTION

Describes the edge that's used for the override.

=head1 ATTRIBUTES


=head2 EdgeSets => ArrayRef[ArrayRef[Str|Undef]]

The list of edge locations.


=head2 UseEdge => Str

The edge that should be used when overriding the current edge order.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

