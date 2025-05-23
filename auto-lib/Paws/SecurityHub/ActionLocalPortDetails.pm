# Generated by default/object.tt
package Paws::SecurityHub::ActionLocalPortDetails;
  use Moose;
  has Port => (is => 'ro', isa => 'Int');
  has PortName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ActionLocalPortDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::ActionLocalPortDetails object:

  $service_obj->Method(Att1 => { Port => $value, ..., PortName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::ActionLocalPortDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Port

=head1 DESCRIPTION

For C<NetworkConnectionAction> and C<PortProbeDetails>,
C<LocalPortDetails> provides information about the local port that was
involved in the action.

=head1 ATTRIBUTES


=head2 Port => Int

The number of the port.


=head2 PortName => Str

The port name of the local connection.

Length Constraints: 128.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

