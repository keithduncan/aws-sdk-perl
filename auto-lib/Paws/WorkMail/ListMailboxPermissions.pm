
package Paws::WorkMail::ListMailboxPermissions;
  use Moose;
  has EntityId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMailboxPermissions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::ListMailboxPermissionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListMailboxPermissions - Arguments for method ListMailboxPermissions on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMailboxPermissions on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method ListMailboxPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMailboxPermissions.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $ListMailboxPermissionsResponse = $workmail->ListMailboxPermissions(
      EntityId       => 'MyEntityIdentifier',
      OrganizationId => 'MyOrganizationId',
      MaxResults     => 1,                      # OPTIONAL
      NextToken      => 'MyNextToken',          # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListMailboxPermissionsResponse->NextToken;
    my $Permissions = $ListMailboxPermissionsResponse->Permissions;

    # Returns a L<Paws::WorkMail::ListMailboxPermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/ListMailboxPermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityId => Str

The identifier of the user, or resource for which to list mailbox
permissions.

The entity ID can accept I<UserId or ResourceId>, I<Username or
Resourcename>, or I<email>.

=over

=item *

Entity ID: 12345678-1234-1234-1234-123456789012, or
r-0123456789a0123456789b0123456789

=item *

Email address: entity@domain.tld

=item *

Entity name: entity

=back




=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token to use to retrieve the next page of results. The first call
does not contain any tokens.



=head2 B<REQUIRED> OrganizationId => Str

The identifier of the organization under which the user, group, or
resource exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMailboxPermissions in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

