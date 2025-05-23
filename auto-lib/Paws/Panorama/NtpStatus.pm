# Generated by default/object.tt
package Paws::Panorama::NtpStatus;
  use Moose;
  has ConnectionStatus => (is => 'ro', isa => 'Str');
  has IpAddress => (is => 'ro', isa => 'Str');
  has NtpServerName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::NtpStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Panorama::NtpStatus object:

  $service_obj->Method(Att1 => { ConnectionStatus => $value, ..., NtpServerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Panorama::NtpStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionStatus

=head1 DESCRIPTION

Details about an NTP server connection.

=head1 ATTRIBUTES


=head2 ConnectionStatus => Str

The connection's status.


=head2 IpAddress => Str

The IP address of the server.


=head2 NtpServerName => Str

The domain name of the server.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

