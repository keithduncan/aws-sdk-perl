
package Paws::ApiGateway::UsagePlan;
  use Moose;
  has ApiStages => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::ApiStage]', traits => ['NameInRequest'], request_name => 'apiStages');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ProductCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'productCode');
  has Quota => (is => 'ro', isa => 'Paws::ApiGateway::QuotaSettings', traits => ['NameInRequest'], request_name => 'quota');
  has Tags => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'tags');
  has Throttle => (is => 'ro', isa => 'Paws::ApiGateway::ThrottleSettings', traits => ['NameInRequest'], request_name => 'throttle');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UsagePlan

=head1 ATTRIBUTES


=head2 ApiStages => ArrayRef[L<Paws::ApiGateway::ApiStage>]

The associated API stages of a usage plan.


=head2 Description => Str

The description of a usage plan.


=head2 Id => Str

The identifier of a UsagePlan resource.


=head2 Name => Str

The name of a usage plan.


=head2 ProductCode => Str

The Amazon Web Services Marketplace product identifier to associate
with the usage plan as a SaaS product on the Amazon Web Services
Marketplace.


=head2 Quota => L<Paws::ApiGateway::QuotaSettings>

The target maximum number of permitted requests per a given unit time
interval.


=head2 Tags => L<Paws::ApiGateway::MapOfStringToString>

The collection of tags. Each tag element is associated with a given
resource.


=head2 Throttle => L<Paws::ApiGateway::ThrottleSettings>

A map containing method level throttling information for API stage in a
usage plan.


=head2 _request_id => Str


=cut

