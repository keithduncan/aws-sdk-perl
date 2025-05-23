
package Paws::KMS::RevokeGrant;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has GrantId => (is => 'ro', isa => 'Str', required => 1);
  has KeyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeGrant');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::RevokeGrant - Arguments for method RevokeGrant on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RevokeGrant on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method RevokeGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RevokeGrant.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To revoke a grant
    # The following example revokes a grant.
    $kms->RevokeGrant(
      'GrantId' =>
        '0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60',
      'KeyId' => '1234abcd-12ab-34cd-56ef-1234567890ab'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/RevokeGrant>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks if your request will succeed. C<DryRun> is an optional
parameter.

To learn more about how to use this parameter, see Testing your KMS API
calls
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html)
in the I<Key Management Service Developer Guide>.



=head2 B<REQUIRED> GrantId => Str

Identifies the grant to revoke. To get the grant ID, use CreateGrant,
ListGrants, or ListRetirableGrants.



=head2 B<REQUIRED> KeyId => Str

A unique identifier for the KMS key associated with the grant. To get
the key ID and key ARN for a KMS key, use ListKeys or DescribeKey.

Specify the key ID or key ARN of the KMS key. To specify a KMS key in a
different Amazon Web Services account, you must use the key ARN.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=back

To get the key ID and key ARN for a KMS key, use ListKeys or
DescribeKey.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RevokeGrant in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

