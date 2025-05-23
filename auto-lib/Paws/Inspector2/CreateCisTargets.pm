# Generated by default/object.tt
package Paws::Inspector2::CreateCisTargets;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'accountIds', traits => ['NameInRequest'], required => 1);
  has TargetResourceTags => (is => 'ro', isa => 'Paws::Inspector2::TargetResourceTags', request_name => 'targetResourceTags', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::CreateCisTargets

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector2::CreateCisTargets object:

  $service_obj->Method(Att1 => { AccountIds => $value, ..., TargetResourceTags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector2::CreateCisTargets object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountIds

=head1 DESCRIPTION

Creates CIS targets.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

The CIS target account ids.


=head2 B<REQUIRED> TargetResourceTags => L<Paws::Inspector2::TargetResourceTags>

The CIS target resource tags.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

