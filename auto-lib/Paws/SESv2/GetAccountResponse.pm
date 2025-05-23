
package Paws::SESv2::GetAccountResponse;
  use Moose;
  has DedicatedIpAutoWarmupEnabled => (is => 'ro', isa => 'Bool');
  has Details => (is => 'ro', isa => 'Paws::SESv2::AccountDetails');
  has EnforcementStatus => (is => 'ro', isa => 'Str');
  has ProductionAccessEnabled => (is => 'ro', isa => 'Bool');
  has SendingEnabled => (is => 'ro', isa => 'Bool');
  has SendQuota => (is => 'ro', isa => 'Paws::SESv2::SendQuota');
  has SuppressionAttributes => (is => 'ro', isa => 'Paws::SESv2::SuppressionAttributes');
  has VdmAttributes => (is => 'ro', isa => 'Paws::SESv2::VdmAttributes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetAccountResponse

=head1 ATTRIBUTES


=head2 DedicatedIpAutoWarmupEnabled => Bool

Indicates whether or not the automatic warm-up feature is enabled for
dedicated IP addresses that are associated with your account.


=head2 Details => L<Paws::SESv2::AccountDetails>

An object that defines your account details.


=head2 EnforcementStatus => Str

The reputation status of your Amazon SES account. The status can be one
of the following:

=over

=item *

C<HEALTHY> E<ndash> There are no reputation-related issues that
currently impact your account.

=item *

C<PROBATION> E<ndash> We've identified potential issues with your
Amazon SES account. We're placing your account under review while you
work on correcting these issues.

=item *

C<SHUTDOWN> E<ndash> Your account's ability to send email is currently
paused because of an issue with the email sent from your account. When
you correct the issue, you can contact us and request that your
account's ability to send email is resumed.

=back



=head2 ProductionAccessEnabled => Bool

Indicates whether or not your account has production access in the
current Amazon Web Services Region.

If the value is C<false>, then your account is in the I<sandbox>. When
your account is in the sandbox, you can only send email to verified
identities.

If the value is C<true>, then your account has production access. When
your account has production access, you can send email to any address.
The sending quota and maximum sending rate for your account vary based
on your specific use case.


=head2 SendingEnabled => Bool

Indicates whether or not email sending is enabled for your Amazon SES
account in the current Amazon Web Services Region.


=head2 SendQuota => L<Paws::SESv2::SendQuota>

An object that contains information about the per-day and per-second
sending limits for your Amazon SES account in the current Amazon Web
Services Region.


=head2 SuppressionAttributes => L<Paws::SESv2::SuppressionAttributes>

An object that contains information about the email address suppression
preferences for your account in the current Amazon Web Services Region.


=head2 VdmAttributes => L<Paws::SESv2::VdmAttributes>

The VDM attributes that apply to your Amazon SES account.


=head2 _request_id => Str


=cut

