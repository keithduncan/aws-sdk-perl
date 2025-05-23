
package Paws::KMS::DeleteCustomKeyStore;
  use Moose;
  has CustomKeyStoreId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCustomKeyStore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::DeleteCustomKeyStoreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::DeleteCustomKeyStore - Arguments for method DeleteCustomKeyStore on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCustomKeyStore on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method DeleteCustomKeyStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCustomKeyStore.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
# To delete a custom key store from AWS KMS
# This example deletes a custom key store from AWS KMS. This operation does not
# delete the AWS CloudHSM cluster that was associated with the CloudHSM cluster.
# This operation doesn't return any data. To verify that the operation was
# successful, use the DescribeCustomKeyStores operation.
    my $DeleteCustomKeyStoreResponse = $kms->DeleteCustomKeyStore(
      'CustomKeyStoreId' => 'cks-1234567890abcdef0' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/DeleteCustomKeyStore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomKeyStoreId => Str

Enter the ID of the custom key store you want to delete. To find the ID
of a custom key store, use the DescribeCustomKeyStores operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCustomKeyStore in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

