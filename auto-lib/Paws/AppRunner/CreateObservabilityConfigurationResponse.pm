
package Paws::AppRunner::CreateObservabilityConfigurationResponse;
  use Moose;
  has ObservabilityConfiguration => (is => 'ro', isa => 'Paws::AppRunner::ObservabilityConfiguration', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::CreateObservabilityConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ObservabilityConfiguration => L<Paws::AppRunner::ObservabilityConfiguration>

A description of the App Runner observability configuration that's
created by this request.


=head2 _request_id => Str


=cut

1;