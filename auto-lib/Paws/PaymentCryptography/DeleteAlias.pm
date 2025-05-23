
package Paws::PaymentCryptography::DeleteAlias;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAlias');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptography::DeleteAliasOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::DeleteAlias - Arguments for method DeleteAlias on L<Paws::PaymentCryptography>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAlias on the
L<Payment Cryptography Control Plane|Paws::PaymentCryptography> service. Use the attributes of this class
as arguments to method DeleteAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAlias.

=head1 SYNOPSIS

    my $controlplane.payment-cryptography = Paws->service('PaymentCryptography');
    my $DeleteAliasOutput = $controlplane . payment-cryptography->DeleteAlias(
      AliasName => 'MyAliasName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controlplane.payment-cryptography/DeleteAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasName => Str

A friendly name that you can use to refer Amazon Web Services Payment
Cryptography key. This value must begin with C<alias/> followed by a
name, such as C<alias/ExampleAlias>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAlias in L<Paws::PaymentCryptography>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

