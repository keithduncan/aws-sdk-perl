
package Paws::WorkMail::GetMailboxDetails;
  use Moose;
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMailboxDetails');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::GetMailboxDetailsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::GetMailboxDetails - Arguments for method GetMailboxDetails on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMailboxDetails on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method GetMailboxDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMailboxDetails.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $GetMailboxDetailsResponse = $workmail->GetMailboxDetails(
      OrganizationId => 'MyOrganizationId',
      UserId         => 'MyEntityIdentifier',

    );

    # Results:
    my $MailboxQuota = $GetMailboxDetailsResponse->MailboxQuota;
    my $MailboxSize  = $GetMailboxDetailsResponse->MailboxSize;

    # Returns a L<Paws::WorkMail::GetMailboxDetailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/GetMailboxDetails>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization that contains the user whose
mailbox details are being requested.



=head2 B<REQUIRED> UserId => Str

The identifier for the user whose mailbox details are being requested.

The identifier can be the I<UserId>, I<Username>, or I<email>. The
following identity formats are available:

=over

=item *

User ID: 12345678-1234-1234-1234-123456789012 or
S-1-1-12-1234567890-123456789-123456789-1234

=item *

Email address: user@domain.tld

=item *

User name: user

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMailboxDetails in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

