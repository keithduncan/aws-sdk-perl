# Generated by default/object.tt
package Paws::SSOAdmin::ApplicationProvider;
  use Moose;
  has ApplicationProviderArn => (is => 'ro', isa => 'Str', required => 1);
  has DisplayData => (is => 'ro', isa => 'Paws::SSOAdmin::DisplayData');
  has FederationProtocol => (is => 'ro', isa => 'Str');
  has ResourceServerConfig => (is => 'ro', isa => 'Paws::SSOAdmin::ResourceServerConfig');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ApplicationProvider

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSOAdmin::ApplicationProvider object:

  $service_obj->Method(Att1 => { ApplicationProviderArn => $value, ..., ResourceServerConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSOAdmin::ApplicationProvider object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationProviderArn

=head1 DESCRIPTION

A structure that describes a provider that can be used to connect an
Amazon Web Services managed application or customer managed application
to IAM Identity Center.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationProviderArn => Str

The ARN of the application provider.


=head2 DisplayData => L<Paws::SSOAdmin::DisplayData>

A structure that describes how IAM Identity Center represents the
application provider in the portal.


=head2 FederationProtocol => Str

The protocol that the application provider uses to perform federation.


=head2 ResourceServerConfig => L<Paws::SSOAdmin::ResourceServerConfig>

A structure that describes the application provider's resource server.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

