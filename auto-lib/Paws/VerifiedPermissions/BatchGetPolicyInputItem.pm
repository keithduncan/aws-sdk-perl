# Generated by default/object.tt
package Paws::VerifiedPermissions::BatchGetPolicyInputItem;
  use Moose;
  has PolicyId => (is => 'ro', isa => 'Str', request_name => 'policyId', traits => ['NameInRequest'], required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', request_name => 'policyStoreId', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::BatchGetPolicyInputItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::VerifiedPermissions::BatchGetPolicyInputItem object:

  $service_obj->Method(Att1 => { PolicyId => $value, ..., PolicyStoreId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::VerifiedPermissions::BatchGetPolicyInputItem object:

  $result = $service_obj->Method(...);
  $result->Att1->PolicyId

=head1 DESCRIPTION

Information about a policy that you include in a C<BatchGetPolicy> API
request.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyId => Str

The identifier of the policy you want information about.


=head2 B<REQUIRED> PolicyStoreId => Str

The identifier of the policy store where the policy you want
information about is stored.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

