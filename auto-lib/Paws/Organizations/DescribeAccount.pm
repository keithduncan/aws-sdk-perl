
package Paws::Organizations::DescribeAccount;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::DescribeAccountResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeAccount - Arguments for method DescribeAccount on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccount on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method DescribeAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccount.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
# To get the details about an account
# The following example shows a user in the master account (111111111111) asking
# for details about account 555555555555:
    my $DescribeAccountResponse =
      $organizations->DescribeAccount( 'AccountId' => 555555555555 );

    # Results:
    my $Account = $DescribeAccountResponse->Account;

    # Returns a L<Paws::Organizations::DescribeAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/DescribeAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The unique identifier (ID) of the Amazon Web Services account that you
want information about. You can get the ID from the ListAccounts or
ListAccountsForParent operations.

The regex pattern (http://wikipedia.org/wiki/regex) for an account ID
string requires exactly 12 digits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccount in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

