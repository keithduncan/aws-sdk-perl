
package Paws::GuardDuty::CreateThreatIntelSet;
  use Moose;
  has Activate => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'activate', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format', required => 1);
  has Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'location', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GuardDuty::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateThreatIntelSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/threatintelset');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::CreateThreatIntelSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateThreatIntelSet - Arguments for method CreateThreatIntelSet on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateThreatIntelSet on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method CreateThreatIntelSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateThreatIntelSet.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $CreateThreatIntelSetResponse = $guardduty->CreateThreatIntelSet(
      Activate    => 1,
      DetectorId  => 'MyDetectorId',
      Format      => 'TXT',
      Location    => 'MyLocation',
      Name        => 'MyName',
      ClientToken => 'MyClientToken',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ThreatIntelSetId = $CreateThreatIntelSetResponse->ThreatIntelSetId;

    # Returns a L<Paws::GuardDuty::CreateThreatIntelSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/CreateThreatIntelSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Activate => Bool

A Boolean value that indicates whether GuardDuty is to start using the
uploaded ThreatIntelSet.



=head2 ClientToken => Str

The idempotency token for the create request.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector of the GuardDuty account for which you
want to create a C<ThreatIntelSet>.

To find the C<detectorId> in the current Region, see the Settings page
in the GuardDuty console, or run the ListDetectors
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html)
API.



=head2 B<REQUIRED> Format => Str

The format of the file that contains the ThreatIntelSet.

Valid values are: C<"TXT">, C<"STIX">, C<"OTX_CSV">, C<"ALIEN_VAULT">, C<"PROOF_POINT">, C<"FIRE_EYE">

=head2 B<REQUIRED> Location => Str

The URI of the file that contains the ThreatIntelSet.



=head2 B<REQUIRED> Name => Str

A user-friendly ThreatIntelSet name displayed in all findings that are
generated by activity that involves IP addresses included in this
ThreatIntelSet.



=head2 Tags => L<Paws::GuardDuty::TagMap>

The tags to be added to a new threat list resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateThreatIntelSet in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

