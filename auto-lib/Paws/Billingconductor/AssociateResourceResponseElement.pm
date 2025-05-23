# Generated by default/object.tt
package Paws::Billingconductor::AssociateResourceResponseElement;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Error => (is => 'ro', isa => 'Paws::Billingconductor::AssociateResourceError');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::AssociateResourceResponseElement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Billingconductor::AssociateResourceResponseElement object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Error => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Billingconductor::AssociateResourceResponseElement object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A resource association result for a percentage custom line item.

=head1 ATTRIBUTES


=head2 Arn => Str

The resource ARN that was associated to the custom line item.


=head2 Error => L<Paws::Billingconductor::AssociateResourceError>

An C<AssociateResourceError> that will populate if the resource
association fails.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

