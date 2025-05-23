# Generated by default/object.tt
package Paws::VerifiedPermissions::UpdateStaticPolicyDefinition;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Statement => (is => 'ro', isa => 'Str', request_name => 'statement', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::UpdateStaticPolicyDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::VerifiedPermissions::UpdateStaticPolicyDefinition object:

  $service_obj->Method(Att1 => { Description => $value, ..., Statement => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::VerifiedPermissions::UpdateStaticPolicyDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Contains information about an update to a static policy.

=head1 ATTRIBUTES


=head2 Description => Str

Specifies the description to be added to or replaced on the static
policy.


=head2 B<REQUIRED> Statement => Str

Specifies the Cedar policy language text to be added to or replaced on
the static policy.

You can change only the following elements from the original content:

=over

=item *

The C<action> referenced by the policy.

=item *

Any conditional clauses, such as C<when> or C<unless> clauses.

=back

You B<can't> change the following elements:

=over

=item *

Changing from C<StaticPolicy> to C<TemplateLinkedPolicy>.

=item *

The effect (C<permit> or C<forbid>) of the policy.

=item *

The C<principal> referenced by the policy.

=item *

The C<resource> referenced by the policy.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

