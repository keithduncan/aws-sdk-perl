# Generated by default/object.tt
package Paws::VerifiedPermissions::UpdatePolicyDefinition;
  use Moose;
  has Static => (is => 'ro', isa => 'Paws::VerifiedPermissions::UpdateStaticPolicyDefinition', request_name => 'static', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::UpdatePolicyDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::VerifiedPermissions::UpdatePolicyDefinition object:

  $service_obj->Method(Att1 => { Static => $value, ..., Static => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::VerifiedPermissions::UpdatePolicyDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->Static

=head1 DESCRIPTION

Contains information about updates to be applied to a policy.

This data type is used as a request parameter in the UpdatePolicy
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicy.html)
operation.

=head1 ATTRIBUTES


=head2 Static => L<Paws::VerifiedPermissions::UpdateStaticPolicyDefinition>

Contains details about the updates to be applied to a static policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

