
package Paws::FraudDetector::UpdateModelVersionResult;
  use Moose;
  has ModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelId' );
  has ModelType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelType' );
  has ModelVersionNumber => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelVersionNumber' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::UpdateModelVersionResult

=head1 ATTRIBUTES


=head2 ModelId => Str

The model ID.


=head2 ModelType => Str

The model type.

Valid values are: C<"ONLINE_FRAUD_INSIGHTS">, C<"TRANSACTION_FRAUD_INSIGHTS">, C<"ACCOUNT_TAKEOVER_INSIGHTS">
=head2 ModelVersionNumber => Str

The model version number of the model version updated.


=head2 Status => Str

The status of the updated model version.


=head2 _request_id => Str


=cut

1;