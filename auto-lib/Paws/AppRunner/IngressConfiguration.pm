# Generated by default/object.tt
package Paws::AppRunner::IngressConfiguration;
  use Moose;
  has IsPubliclyAccessible => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::IngressConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppRunner::IngressConfiguration object:

  $service_obj->Method(Att1 => { IsPubliclyAccessible => $value, ..., IsPubliclyAccessible => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppRunner::IngressConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->IsPubliclyAccessible

=head1 DESCRIPTION

Network configuration settings for inbound network traffic.

=head1 ATTRIBUTES


=head2 IsPubliclyAccessible => Bool

Specifies whether your App Runner service is publicly accessible. To
make the service publicly accessible set it to C<True>. To make the
service privately accessible, from only within an Amazon VPC set it to
C<False>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

