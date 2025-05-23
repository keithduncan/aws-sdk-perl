
package Paws::WorkMail::DescribeOrganizationResponse;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str');
  has ARN => (is => 'ro', isa => 'Str');
  has CompletedDate => (is => 'ro', isa => 'Str');
  has DefaultMailDomain => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str');
  has DirectoryType => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has InteroperabilityEnabled => (is => 'ro', isa => 'Bool');
  has MigrationAdmin => (is => 'ro', isa => 'Str');
  has OrganizationId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeOrganizationResponse

=head1 ATTRIBUTES


=head2 Alias => Str

The alias for an organization.


=head2 ARN => Str

The Amazon Resource Name (ARN) of the organization.


=head2 CompletedDate => Str

The date at which the organization became usable in the WorkMail
context, in UNIX epoch time format.


=head2 DefaultMailDomain => Str

The default mail domain associated with the organization.


=head2 DirectoryId => Str

The identifier for the directory associated with an WorkMail
organization.


=head2 DirectoryType => Str

The type of directory associated with the WorkMail organization.


=head2 ErrorMessage => Str

(Optional) The error message indicating if unexpected behavior was
encountered with regards to the organization.


=head2 InteroperabilityEnabled => Bool

Indicates if interoperability is enabled for this organization.


=head2 MigrationAdmin => Str

The user ID of the migration admin if migration is enabled for the
organization.


=head2 OrganizationId => Str

The identifier of an organization.


=head2 State => Str

The state of an organization.


=head2 _request_id => Str


=cut

1;