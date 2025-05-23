# Generated by default/object.tt
package Paws::DMS::Filter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::Filter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::Filter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::Filter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Identifies the name and value of a filter object. This filter is used
to limit the number and type of DMS objects that are returned for a
particular C<Describe*> call or similar operation. Filters are used as
an optional parameter for certain API operations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the filter as specified for a C<Describe*> or similar
operation.


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

The filter value, which can specify one or more values used to narrow
the returned results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

