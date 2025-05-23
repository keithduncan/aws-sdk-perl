# Generated by default/object.tt
package Paws::CodeBuild::ProxyConfiguration;
  use Moose;
  has DefaultBehavior => (is => 'ro', isa => 'Str', request_name => 'defaultBehavior', traits => ['NameInRequest']);
  has OrderedProxyRules => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::FleetProxyRule]', request_name => 'orderedProxyRules', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ProxyConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::ProxyConfiguration object:

  $service_obj->Method(Att1 => { DefaultBehavior => $value, ..., OrderedProxyRules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::ProxyConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultBehavior

=head1 DESCRIPTION

Information about the proxy configurations that apply network access
control to your reserved capacity instances.

=head1 ATTRIBUTES


=head2 DefaultBehavior => Str

The default behavior of outgoing traffic.


=head2 OrderedProxyRules => ArrayRef[L<Paws::CodeBuild::FleetProxyRule>]

An array of C<FleetProxyRule> objects that represent the specified
destination domains or IPs to allow or deny network access control to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

