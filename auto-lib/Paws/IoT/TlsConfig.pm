# Generated by default/object.tt
package Paws::IoT::TlsConfig;
  use Moose;
  has SecurityPolicy => (is => 'ro', isa => 'Str', request_name => 'securityPolicy', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TlsConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::TlsConfig object:

  $service_obj->Method(Att1 => { SecurityPolicy => $value, ..., SecurityPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::TlsConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->SecurityPolicy

=head1 DESCRIPTION

An object that specifies the TLS configuration for a domain.

=head1 ATTRIBUTES


=head2 SecurityPolicy => Str

The security policy for a domain configuration. For more information,
see Security policies
(https://docs.aws.amazon.com/iot/latest/developerguide/transport-security.html#tls-policy-table)
in the I<Amazon Web Services IoT Core developer guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

