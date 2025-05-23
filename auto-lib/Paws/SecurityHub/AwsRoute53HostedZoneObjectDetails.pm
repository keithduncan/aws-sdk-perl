# Generated by default/object.tt
package Paws::SecurityHub::AwsRoute53HostedZoneObjectDetails;
  use Moose;
  has Config => (is => 'ro', isa => 'Paws::SecurityHub::AwsRoute53HostedZoneConfigDetails');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsRoute53HostedZoneObjectDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsRoute53HostedZoneObjectDetails object:

  $service_obj->Method(Att1 => { Config => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsRoute53HostedZoneObjectDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Config

=head1 DESCRIPTION

An object that contains information about an Amazon Route 53 hosted
zone.

=head1 ATTRIBUTES


=head2 Config => L<Paws::SecurityHub::AwsRoute53HostedZoneConfigDetails>

An object that includes the C<Comment> element.


=head2 Id => Str

The ID that Route 53 assigns to the hosted zone when you create it.


=head2 Name => Str

The name of the domain. For public hosted zones, this is the name that
you have registered with your DNS registrar.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

