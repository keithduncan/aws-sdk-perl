# Generated by default/object.tt
package Paws::Wisdom::AssistantSummary;
  use Moose;
  has AssistantArn => (is => 'ro', isa => 'Str', request_name => 'assistantArn', traits => ['NameInRequest'], required => 1);
  has AssistantId => (is => 'ro', isa => 'Str', request_name => 'assistantId', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has IntegrationConfiguration => (is => 'ro', isa => 'Paws::Wisdom::AssistantIntegrationConfiguration', request_name => 'integrationConfiguration', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::Wisdom::ServerSideEncryptionConfiguration', request_name => 'serverSideEncryptionConfiguration', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Wisdom::Tags', request_name => 'tags', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::AssistantSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Wisdom::AssistantSummary object:

  $service_obj->Method(Att1 => { AssistantArn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Wisdom::AssistantSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AssistantArn

=head1 DESCRIPTION

Summary information about the assistant.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantArn => Str

The Amazon Resource Name (ARN) of the Wisdom assistant.


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Wisdom assistant.


=head2 Description => Str

The description of the assistant.


=head2 IntegrationConfiguration => L<Paws::Wisdom::AssistantIntegrationConfiguration>

The configuration information for the Wisdom assistant integration.


=head2 B<REQUIRED> Name => Str

The name of the assistant.


=head2 ServerSideEncryptionConfiguration => L<Paws::Wisdom::ServerSideEncryptionConfiguration>

The configuration information for the customer managed key used for
encryption.

This KMS key must have a policy that allows C<kms:CreateGrant>,
C<kms:DescribeKey>, and C<kms:Decrypt/kms:GenerateDataKey> permissions
to the IAM identity using the key to invoke Wisdom. To use Wisdom with
chat, the key policy must also allow C<kms:Decrypt>,
C<kms:GenerateDataKey*>, and C<kms:DescribeKey> permissions to the
C<connect.amazonaws.com> service principal.

For more information about setting up a customer managed key for
Wisdom, see Enable Amazon Connect Wisdom for your instance
(https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html).


=head2 B<REQUIRED> Status => Str

The status of the assistant.


=head2 Tags => L<Paws::Wisdom::Tags>

The tags used to organize, track, or control access for this resource.


=head2 B<REQUIRED> Type => Str

The type of the assistant.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

