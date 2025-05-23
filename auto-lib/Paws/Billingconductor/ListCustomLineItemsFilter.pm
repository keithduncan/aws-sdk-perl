# Generated by default/object.tt
package Paws::Billingconductor::ListCustomLineItemsFilter;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Arns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has BillingGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListCustomLineItemsFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Billingconductor::ListCustomLineItemsFilter object:

  $service_obj->Method(Att1 => { AccountIds => $value, ..., Names => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Billingconductor::ListCustomLineItemsFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountIds

=head1 DESCRIPTION

A filter that specifies the custom line items and billing groups to
retrieve FFLI information.

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The Amazon Web Services accounts in which this custom line item will be
applied to.


=head2 Arns => ArrayRef[Str|Undef]

A list of custom line item ARNs to retrieve information.


=head2 BillingGroups => ArrayRef[Str|Undef]

The billing group Amazon Resource Names (ARNs) to retrieve information.


=head2 Names => ArrayRef[Str|Undef]

A list of custom line items to retrieve information.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

