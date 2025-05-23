# Generated by default/object.tt
package Paws::DataZone::UserPolicyGrantPrincipal;
  use Moose;
  has AllUsersGrantFilter => (is => 'ro', isa => 'Paws::DataZone::AllUsersGrantFilter', request_name => 'allUsersGrantFilter', traits => ['NameInRequest']);
  has UserIdentifier => (is => 'ro', isa => 'Str', request_name => 'userIdentifier', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UserPolicyGrantPrincipal

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataZone::UserPolicyGrantPrincipal object:

  $service_obj->Method(Att1 => { AllUsersGrantFilter => $value, ..., UserIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataZone::UserPolicyGrantPrincipal object:

  $result = $service_obj->Method(...);
  $result->Att1->AllUsersGrantFilter

=head1 DESCRIPTION

The user policy grant principal.

=head1 ATTRIBUTES


=head2 AllUsersGrantFilter => L<Paws::DataZone::AllUsersGrantFilter>

The all users grant filter of the user policy grant principal.


=head2 UserIdentifier => Str

The user ID of the user policy grant principal.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

