# Generated by default/object.tt
package Paws::SecurityHub::Policy;
  use Moose;
  has SecurityHub => (is => 'ro', isa => 'Paws::SecurityHub::SecurityHubPolicy');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::Policy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::Policy object:

  $service_obj->Method(Att1 => { SecurityHub => $value, ..., SecurityHub => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::Policy object:

  $result = $service_obj->Method(...);
  $result->Att1->SecurityHub

=head1 DESCRIPTION

An object that defines how Security Hub is configured. It includes
whether Security Hub is enabled or disabled, a list of enabled security
standards, a list of enabled or disabled security controls, and a list
of custom parameter values for specified controls. If you provide a
list of security controls that are enabled in the configuration policy,
Security Hub disables all other controls (including newly released
controls). If you provide a list of security controls that are disabled
in the configuration policy, Security Hub enables all other controls
(including newly released controls).

=head1 ATTRIBUTES


=head2 SecurityHub => L<Paws::SecurityHub::SecurityHubPolicy>

The Amazon Web Services service that the configuration policy applies
to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

