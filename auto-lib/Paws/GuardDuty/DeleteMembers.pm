
package Paws::GuardDuty::DeleteMembers;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds', required => 1);
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/member/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::DeleteMembersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DeleteMembers - Arguments for method DeleteMembers on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMembers on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method DeleteMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMembers.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $DeleteMembersResponse = $guardduty->DeleteMembers(
      AccountIds => [
        'MyAccountId', ...    # min: 12, max: 12
      ],
      DetectorId => 'MyDetectorId',

    );

    # Results:
    my $UnprocessedAccounts = $DeleteMembersResponse->UnprocessedAccounts;

    # Returns a L<Paws::GuardDuty::DeleteMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/DeleteMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

A list of account IDs of the GuardDuty member accounts that you want to
delete.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector of the GuardDuty account whose members
you want to delete.

To find the C<detectorId> in the current Region, see the Settings page
in the GuardDuty console, or run the ListDetectors
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html)
API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMembers in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

