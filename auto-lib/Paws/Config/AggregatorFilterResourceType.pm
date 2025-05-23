# Generated by default/object.tt
package Paws::Config::AggregatorFilterResourceType;
  use Moose;
  has Type => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::AggregatorFilterResourceType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::AggregatorFilterResourceType object:

  $service_obj->Method(Att1 => { Type => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::AggregatorFilterResourceType object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

An object to filter the configuration recorders based on the resource
types in scope for recording.

=head1 ATTRIBUTES


=head2 Type => Str

The type of resource type filter to apply. C<INCLUDE> specifies that
the list of resource types in the C<Value> field will be aggregated and
no other resource types will be filtered.


=head2 Value => ArrayRef[Str|Undef]

Comma-separate list of resource types to filter your aggregated
configuration recorders.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

