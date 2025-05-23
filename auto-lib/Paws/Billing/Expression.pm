# Generated by default/object.tt
package Paws::Billing::Expression;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'Paws::Billing::DimensionValues', request_name => 'dimensions', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::Billing::TagValues', request_name => 'tags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Billing::Expression

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Billing::Expression object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Billing::Expression object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

See Expression
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html).
Billing view only supports C<LINKED_ACCOUNT> and C<Tags>.

=head1 ATTRIBUTES


=head2 Dimensions => L<Paws::Billing::DimensionValues>

The specific C<Dimension> to use for C<Expression>.


=head2 Tags => L<Paws::Billing::TagValues>

The specific C<Tag> to use for C<Expression>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Billing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

