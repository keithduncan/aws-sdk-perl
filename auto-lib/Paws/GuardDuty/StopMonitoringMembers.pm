
package Paws::GuardDuty::StopMonitoringMembers;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds', required => 1);
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopMonitoringMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/member/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::StopMonitoringMembersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::StopMonitoringMembers - Arguments for method StopMonitoringMembers on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopMonitoringMembers on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method StopMonitoringMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopMonitoringMembers.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $StopMonitoringMembersResponse = $guardduty->StopMonitoringMembers(
      AccountIds => [
        'MyAccountId', ...    # min: 12, max: 12
      ],
      DetectorId => 'MyDetectorId',

    );

    # Results:
    my $UnprocessedAccounts =
      $StopMonitoringMembersResponse->UnprocessedAccounts;

    # Returns a L<Paws::GuardDuty::StopMonitoringMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/StopMonitoringMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

A list of account IDs for the member accounts to stop monitoring.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector associated with the GuardDuty
administrator account that is monitoring member accounts.

To find the C<detectorId> in the current Region, see the Settings page
in the GuardDuty console, or run the ListDetectors
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html)
API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopMonitoringMembers in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

