# Generated by default/object.tt
package Paws::EKS::AccessScope;
  use Moose;
  has Namespaces => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'namespaces', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::AccessScope

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::AccessScope object:

  $service_obj->Method(Att1 => { Namespaces => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::AccessScope object:

  $result = $service_obj->Method(...);
  $result->Att1->Namespaces

=head1 DESCRIPTION

The scope of an C<AccessPolicy> that's associated to an C<AccessEntry>.

=head1 ATTRIBUTES


=head2 Namespaces => ArrayRef[Str|Undef]

A Kubernetes C<namespace> that an access policy is scoped to. A value
is required if you specified C<namespace> for C<Type>.


=head2 Type => Str

The scope type of an access policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

