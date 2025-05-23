
package Paws::Detective::CreateMembers;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Paws::Detective::Account]', required => 1);
  has DisableEmailNotification => (is => 'ro', isa => 'Bool');
  has GraphArn => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/graph/members');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Detective::CreateMembersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::CreateMembers - Arguments for method CreateMembers on L<Paws::Detective>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMembers on the
L<Amazon Detective|Paws::Detective> service. Use the attributes of this class
as arguments to method CreateMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMembers.

=head1 SYNOPSIS

    my $api.detective = Paws->service('Detective');
    my $CreateMembersResponse = $api . detective->CreateMembers(
      Accounts => [
        {
          AccountId    => 'MyAccountId',       # min: 12, max: 12
          EmailAddress => 'MyEmailAddress',    # min: 1, max: 64

        },
        ...
      ],
      GraphArn                 => 'MyGraphArn',
      DisableEmailNotification => 1,                   # OPTIONAL
      Message                  => 'MyEmailMessage',    # OPTIONAL
    );

    # Results:
    my $Members             = $CreateMembersResponse->Members;
    my $UnprocessedAccounts = $CreateMembersResponse->UnprocessedAccounts;

    # Returns a L<Paws::Detective::CreateMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.detective/CreateMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Accounts => ArrayRef[L<Paws::Detective::Account>]

The list of Amazon Web Services accounts to invite or to enable. You
can invite or enable up to 50 accounts at a time. For each invited
account, the account list contains the account identifier and the
Amazon Web Services account root user email address. For organization
accounts in the organization behavior graph, the email address is not
required.



=head2 DisableEmailNotification => Bool

if set to C<true>, then the invited accounts do not receive email
notifications. By default, this is set to C<false>, and the invited
accounts receive email notifications.

Organization accounts in the organization behavior graph do not receive
email notifications.



=head2 B<REQUIRED> GraphArn => Str

The ARN of the behavior graph.



=head2 Message => Str

Customized message text to include in the invitation email message to
the invited member accounts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMembers in L<Paws::Detective>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

