# Generated by default/object.tt
package Paws::MediaConnect::DestinationConfigurationRequest;
  use Moose;
  has DestinationIp => (is => 'ro', isa => 'Str', request_name => 'destinationIp', traits => ['NameInRequest'], required => 1);
  has DestinationPort => (is => 'ro', isa => 'Int', request_name => 'destinationPort', traits => ['NameInRequest'], required => 1);
  has Interface => (is => 'ro', isa => 'Paws::MediaConnect::InterfaceRequest', request_name => 'interface', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DestinationConfigurationRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::DestinationConfigurationRequest object:

  $service_obj->Method(Att1 => { DestinationIp => $value, ..., Interface => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::DestinationConfigurationRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationIp

=head1 DESCRIPTION

The definition of a media stream that you want to associate with the
output.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationIp => Str

The IP address where you want MediaConnect to send contents of the
media stream.


=head2 B<REQUIRED> DestinationPort => Int

The port that you want MediaConnect to use when it distributes the
media stream to the output.


=head2 B<REQUIRED> Interface => L<Paws::MediaConnect::InterfaceRequest>

The VPC interface that you want to use for the media stream associated
with the output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

