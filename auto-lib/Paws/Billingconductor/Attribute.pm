# Generated by default/object.tt
package Paws::Billingconductor::Attribute;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::Attribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Billingconductor::Attribute object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Billingconductor::Attribute object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

The key-value pair that represents the attribute by which the
C<BillingGroupCostReportResults> are grouped. For example, if you want
a service-level breakdown for Amazon Simple Storage Service (Amazon S3)
of the billing group, the attribute will be a key-value pair of
C<"PRODUCT_NAME"> and C<"S3">.

=head1 ATTRIBUTES


=head2 Key => Str

The key in a key-value pair that describes the margin summary.


=head2 Value => Str

The value in a key-value pair that describes the margin summary.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

