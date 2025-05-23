# Generated by default/object.tt
package Paws::SSOAdmin::ResourceServerConfig;
  use Moose;
  has Scopes => (is => 'ro', isa => 'Paws::SSOAdmin::ResourceServerScopes');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ResourceServerConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSOAdmin::ResourceServerConfig object:

  $service_obj->Method(Att1 => { Scopes => $value, ..., Scopes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSOAdmin::ResourceServerConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Scopes

=head1 DESCRIPTION

A structure that describes the configuration of a resource server.

=head1 ATTRIBUTES


=head2 Scopes => L<Paws::SSOAdmin::ResourceServerScopes>

A list of the IAM Identity Center access scopes that are associated
with this resource server.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

