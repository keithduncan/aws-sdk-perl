# Generated by default/object.tt
package Paws::ResourceExplorer2::SearchFilter;
  use Moose;
  has FilterString => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::SearchFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ResourceExplorer2::SearchFilter object:

  $service_obj->Method(Att1 => { FilterString => $value, ..., FilterString => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ResourceExplorer2::SearchFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->FilterString

=head1 DESCRIPTION

A search filter defines which resources can be part of a search query
result set.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FilterString => Str

The string that contains the search keywords, prefixes, and operators
to control the results that can be returned by a Search operation. For
more details, see Search query syntax
(https://docs.aws.amazon.com/resource-explorer/latest/APIReference/about-query-syntax.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ResourceExplorer2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

