
package Paws::Macie2::GetSensitiveDataOccurrencesAvailabilityResponse;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'code');
  has Reasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'reasons');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetSensitiveDataOccurrencesAvailabilityResponse

=head1 ATTRIBUTES


=head2 Code => Str

Specifies whether occurrences of sensitive data can be retrieved for
the finding. Possible values are: AVAILABLE, the sensitive data can be
retrieved; and, UNAVAILABLE, the sensitive data can't be retrieved. If
this value is UNAVAILABLE, the reasons array indicates why the data
can't be retrieved.

Valid values are: C<"AVAILABLE">, C<"UNAVAILABLE">
=head2 Reasons => ArrayRef[Str|Undef]

Specifies why occurrences of sensitive data can't be retrieved for the
finding. Possible values are:

=over

=item *

ACCOUNT_NOT_IN_ORGANIZATION - The affected account isn't currently part
of your organization. Or the account is part of your organization but
Macie isn't currently enabled for the account. You're not allowed to
access the affected S3 object by using Macie.

=item *

INVALID_CLASSIFICATION_RESULT - There isn't a corresponding sensitive
data discovery result for the finding. Or the corresponding sensitive
data discovery result isn't available in the current Amazon Web
Services Region, is malformed or corrupted, or uses an unsupported
storage format. Macie can't verify the location of the sensitive data
to retrieve.

=item *

INVALID_RESULT_SIGNATURE - The corresponding sensitive data discovery
result is stored in an S3 object that wasn't signed by Macie. Macie
can't verify the integrity and authenticity of the sensitive data
discovery result. Therefore, Macie can't verify the location of the
sensitive data to retrieve.

=item *

MEMBER_ROLE_TOO_PERMISSIVE - The trust or permissions policy for the
IAM role in the affected member account doesn't meet Macie requirements
for restricting access to the role. Or the role's trust policy doesn't
specify the correct external ID for your organization. Macie can't
assume the role to retrieve the sensitive data.

=item *

MISSING_GET_MEMBER_PERMISSION - You're not allowed to retrieve
information about the association between your account and the affected
account. Macie can't determine whether youE<rsquo>re allowed to access
the affected S3 object as the delegated Macie administrator for the
affected account.

=item *

OBJECT_EXCEEDS_SIZE_QUOTA - The storage size of the affected S3 object
exceeds the size quota for retrieving occurrences of sensitive data
from this type of file.

=item *

OBJECT_UNAVAILABLE - The affected S3 object isn't available. The object
was renamed, moved, deleted, or changed after Macie created the
finding. Or the object is encrypted with an KMS key that isnE<rsquo>t
available. For example, the key is disabled, is scheduled for deletion,
or was deleted.

=item *

RESULT_NOT_SIGNED - The corresponding sensitive data discovery result
is stored in an S3 object that hasn't been signed. Macie can't verify
the integrity and authenticity of the sensitive data discovery result.
Therefore, Macie can't verify the location of the sensitive data to
retrieve.

=item *

ROLE_TOO_PERMISSIVE - Your account is configured to retrieve
occurrences of sensitive data by using an IAM role whose trust or
permissions policy doesn't meet Macie requirements for restricting
access to the role. Macie canE<rsquo>t assume the role to retrieve the
sensitive data.

=item *

UNSUPPORTED_FINDING_TYPE - The specified finding isn't a sensitive data
finding.

=item *

UNSUPPORTED_OBJECT_TYPE - The affected S3 object uses a file or storage
format that Macie doesn't support for retrieving occurrences of
sensitive data.

=back

This value is null if sensitive data can be retrieved for the finding.


=head2 _request_id => Str


=cut

