# Generated by default/object.tt
package Paws::Glue::Integration;
  use Moose;
  has AdditionalEncryptionContext => (is => 'ro', isa => 'Paws::Glue::IntegrationAdditionalEncryptionContextMap');
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has DataFilter => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Glue::IntegrationError]');
  has IntegrationArn => (is => 'ro', isa => 'Str', required => 1);
  has IntegrationConfig => (is => 'ro', isa => 'Paws::Glue::IntegrationConfig');
  has IntegrationName => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Tag]');
  has TargetArn => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Integration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Integration object:

  $service_obj->Method(Att1 => { AdditionalEncryptionContext => $value, ..., TargetArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Integration object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalEncryptionContext

=head1 DESCRIPTION

Describes a zero-ETL integration.

=head1 ATTRIBUTES


=head2 AdditionalEncryptionContext => L<Paws::Glue::IntegrationAdditionalEncryptionContextMap>

An optional set of non-secret keyE<ndash>value pairs that contains
additional contextual information for encryption. This can only be
provided if C<KMSKeyId> is provided.


=head2 B<REQUIRED> CreateTime => Str

The time that the integration was created, in UTC.


=head2 DataFilter => Str

Selects source tables for the integration using Maxwell filter syntax.


=head2 Description => Str

A description for the integration.


=head2 Errors => ArrayRef[L<Paws::Glue::IntegrationError>]

A list of errors associated with the integration.


=head2 B<REQUIRED> IntegrationArn => Str

The Amazon Resource Name (ARN) for the integration.


=head2 IntegrationConfig => L<Paws::Glue::IntegrationConfig>

Properties associated with the integration.


=head2 B<REQUIRED> IntegrationName => Str

A unique name for the integration.


=head2 KmsKeyId => Str

The ARN of a KMS key used for encrypting the channel.


=head2 B<REQUIRED> SourceArn => Str

The ARN for the source of the integration.


=head2 B<REQUIRED> Status => Str

The possible statuses are:

=over

=item *

CREATING: The integration is being created.

=item *

ACTIVE: The integration creation succeeds.

=item *

MODIFYING: The integration is being modified.

=item *

FAILED: The integration creation fails.

=item *

DELETING: The integration is deleted.

=item *

SYNCING: The integration is synchronizing.

=item *

NEEDS_ATTENTION: The integration needs attention, such as
synchronization.

=back



=head2 Tags => ArrayRef[L<Paws::Glue::Tag>]

Metadata assigned to the resource consisting of a list of key-value
pairs.


=head2 B<REQUIRED> TargetArn => Str

The ARN for the target of the integration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

