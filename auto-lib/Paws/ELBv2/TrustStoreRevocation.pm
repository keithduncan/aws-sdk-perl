# Generated by default/object.tt
package Paws::ELBv2::TrustStoreRevocation;
  use Moose;
  has NumberOfRevokedEntries => (is => 'ro', isa => 'Int');
  has RevocationId => (is => 'ro', isa => 'Int');
  has RevocationType => (is => 'ro', isa => 'Str');
  has TrustStoreArn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::TrustStoreRevocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::TrustStoreRevocation object:

  $service_obj->Method(Att1 => { NumberOfRevokedEntries => $value, ..., TrustStoreArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::TrustStoreRevocation object:

  $result = $service_obj->Method(...);
  $result->Att1->NumberOfRevokedEntries

=head1 DESCRIPTION

Information about a revocation file in use by a trust store.

=head1 ATTRIBUTES


=head2 NumberOfRevokedEntries => Int

The number of revoked certificates.


=head2 RevocationId => Int

The revocation ID of the revocation file.


=head2 RevocationType => Str

The type of revocation file.


=head2 TrustStoreArn => Str

The Amazon Resource Name (ARN) of the trust store.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

