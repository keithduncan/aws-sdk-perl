# Generated by default/object.tt
package Paws::MediaConnect::TransportMediaInfo;
  use Moose;
  has Programs => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::TransportStreamProgram]', request_name => 'programs', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::TransportMediaInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::TransportMediaInfo object:

  $service_obj->Method(Att1 => { Programs => $value, ..., Programs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::TransportMediaInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Programs

=head1 DESCRIPTION

The metadata of the transport stream in the current flow's source.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Programs => ArrayRef[L<Paws::MediaConnect::TransportStreamProgram>]

The list of transport stream programs in the current flow's source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

