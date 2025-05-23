# Generated by default/object.tt
package Paws::FMS::WebACLHasOutOfScopeResourcesViolation;
  use Moose;
  has OutOfScopeResourceList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has WebACLArn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::WebACLHasOutOfScopeResourcesViolation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::WebACLHasOutOfScopeResourcesViolation object:

  $service_obj->Method(Att1 => { OutOfScopeResourceList => $value, ..., WebACLArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::WebACLHasOutOfScopeResourcesViolation object:

  $result = $service_obj->Method(...);
  $result->Att1->OutOfScopeResourceList

=head1 DESCRIPTION

The violation details for a web ACL that's associated with at least one
resource that's out of scope of the Firewall Manager policy.

=head1 ATTRIBUTES


=head2 OutOfScopeResourceList => ArrayRef[Str|Undef]

An array of Amazon Resource Name (ARN) for the resources that are out
of scope of the policy and are associated with the web ACL.


=head2 WebACLArn => Str

The Amazon Resource Name (ARN) of the web ACL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

