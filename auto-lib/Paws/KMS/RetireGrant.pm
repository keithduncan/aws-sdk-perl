
package Paws::KMS::RetireGrant;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has GrantId => (is => 'ro', isa => 'Str');
  has GrantToken => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetireGrant');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::RetireGrant - Arguments for method RetireGrant on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RetireGrant on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method RetireGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RetireGrant.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To retire a grant
    # The following example retires a grant.
    $kms->RetireGrant(
      'GrantId' =>
        '0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60',
      'KeyId' =>
'arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/RetireGrant>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks if your request will succeed. C<DryRun> is an optional
parameter.

To learn more about how to use this parameter, see Testing your KMS API
calls
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html)
in the I<Key Management Service Developer Guide>.



=head2 GrantId => Str

Identifies the grant to retire. To get the grant ID, use CreateGrant,
ListGrants, or ListRetirableGrants.

=over

=item *

Grant ID Example -
0123456789012345678901234567890123456789012345678901234567890123

=back




=head2 GrantToken => Str

Identifies the grant to be retired. You can use a grant token to
identify a new grant even before it has achieved eventual consistency.

Only the CreateGrant operation returns a grant token. For details, see
Grant token
(https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token)
and Eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-eventual-consistency)
in the I<Key Management Service Developer Guide>.



=head2 KeyId => Str

The key ARN KMS key associated with the grant. To find the key ARN, use
the ListKeys operation.

For example:
C<arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RetireGrant in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

