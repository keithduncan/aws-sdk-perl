# Generated by default/object.tt
package Paws::Glue::ConnectionTypeBrief;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'Paws::Glue::Capabilities');
  has ConnectionType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ConnectionTypeBrief

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::ConnectionTypeBrief object:

  $service_obj->Method(Att1 => { Capabilities => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::ConnectionTypeBrief object:

  $result = $service_obj->Method(...);
  $result->Att1->Capabilities

=head1 DESCRIPTION

Brief information about a supported connection type returned by the
C<ListConnectionTypes> API.

=head1 ATTRIBUTES


=head2 Capabilities => L<Paws::Glue::Capabilities>

The supported authentication types, data interface types (compute
environments), and data operations of the connector.


=head2 ConnectionType => Str

The name of the connection type.


=head2 Description => Str

A description of the connection type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

