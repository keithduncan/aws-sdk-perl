# Generated by default/object.tt
package Paws::Billingconductor::AccountGrouping;
  use Moose;
  has AutoAssociate => (is => 'ro', isa => 'Bool');
  has LinkedAccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::AccountGrouping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Billingconductor::AccountGrouping object:

  $service_obj->Method(Att1 => { AutoAssociate => $value, ..., LinkedAccountIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Billingconductor::AccountGrouping object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoAssociate

=head1 DESCRIPTION

The set of accounts that will be under the billing group. The set of
accounts resemble the linked accounts in a consolidated billing family.

=head1 ATTRIBUTES


=head2 AutoAssociate => Bool

Specifies if this billing group will automatically associate newly
added Amazon Web Services accounts that join your consolidated billing
family.


=head2 B<REQUIRED> LinkedAccountIds => ArrayRef[Str|Undef]

The account IDs that make up the billing group. Account IDs must be a
part of the consolidated billing family, and not associated with
another billing group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

