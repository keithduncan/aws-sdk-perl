# Generated by default/object.tt
package Paws::NetworkManager::CoreNetworkPolicyError;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CoreNetworkPolicyError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkManager::CoreNetworkPolicyError object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkManager::CoreNetworkPolicyError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Provides details about an error in a core network policy.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ErrorCode => Str

The error code associated with a core network policy error.


=head2 B<REQUIRED> Message => Str

The message associated with a core network policy error code.


=head2 Path => Str

The JSON path where the error was discovered in the policy document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

