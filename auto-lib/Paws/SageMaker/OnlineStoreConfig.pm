# Generated by default/object.tt
package Paws::SageMaker::OnlineStoreConfig;
  use Moose;
  has EnableOnlineStore => (is => 'ro', isa => 'Bool');
  has SecurityConfig => (is => 'ro', isa => 'Paws::SageMaker::OnlineStoreSecurityConfig');
  has StorageType => (is => 'ro', isa => 'Str');
  has TtlDuration => (is => 'ro', isa => 'Paws::SageMaker::TtlDuration');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::OnlineStoreConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::OnlineStoreConfig object:

  $service_obj->Method(Att1 => { EnableOnlineStore => $value, ..., TtlDuration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::OnlineStoreConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->EnableOnlineStore

=head1 DESCRIPTION

Use this to specify the Amazon Web Services Key Management Service
(KMS) Key ID, or C<KMSKeyId>, for at rest data encryption. You can turn
C<OnlineStore> on or off by specifying the C<EnableOnlineStore> flag at
General Assembly.

The default value is C<False>.

=head1 ATTRIBUTES


=head2 EnableOnlineStore => Bool

Turn C<OnlineStore> off by specifying C<False> for the
C<EnableOnlineStore> flag. Turn C<OnlineStore> on by specifying C<True>
for the C<EnableOnlineStore> flag.

The default value is C<False>.


=head2 SecurityConfig => L<Paws::SageMaker::OnlineStoreSecurityConfig>

Use to specify KMS Key ID (C<KMSKeyId>) for at-rest encryption of your
C<OnlineStore>.


=head2 StorageType => Str

Option for different tiers of low latency storage for real-time data
retrieval.

=over

=item *

C<Standard>: A managed low latency data store for feature groups.

=item *

C<InMemory>: A managed data store for feature groups that supports very
low latency retrieval.

=back



=head2 TtlDuration => L<Paws::SageMaker::TtlDuration>

Time to live duration, where the record is hard deleted after the
expiration time is reached; C<ExpiresAt> = C<EventTime> +
C<TtlDuration>. For information on HardDelete, see the DeleteRecord
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_feature_store_DeleteRecord.html)
API in the Amazon SageMaker API Reference guide.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

