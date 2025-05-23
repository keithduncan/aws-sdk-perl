# Generated by default/object.tt
package Paws::ManagedBlockchainQuery::AddressIdentifierFilter;
  use Moose;
  has TransactionEventToAddress => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'transactionEventToAddress', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::AddressIdentifierFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchainQuery::AddressIdentifierFilter object:

  $service_obj->Method(Att1 => { TransactionEventToAddress => $value, ..., TransactionEventToAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchainQuery::AddressIdentifierFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->TransactionEventToAddress

=head1 DESCRIPTION

This is the container for the unique public address on the blockchain.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TransactionEventToAddress => ArrayRef[Str|Undef]

The container for the recipient address of the transaction.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchainQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

