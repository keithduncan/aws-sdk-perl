
package Paws::IAM::GetOrganizationsAccessReport;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has SortKey => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOrganizationsAccessReport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetOrganizationsAccessReportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetOrganizationsAccessReportResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetOrganizationsAccessReport - Arguments for method GetOrganizationsAccessReport on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOrganizationsAccessReport on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GetOrganizationsAccessReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOrganizationsAccessReport.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To get details from a previously generated organizational unit report
    # The following operation gets details about the report with the job ID:
    # examplea-1234-b567-cde8-90fg123abcd4
    my $GetOrganizationsAccessReportResponse =
      $iam->GetOrganizationsAccessReport(
      'JobId' => 'examplea-1234-b567-cde8-90fg123abcd4' );

    # Results:
    my $AccessDetails = $GetOrganizationsAccessReportResponse->AccessDetails;
    my $IsTruncated   = $GetOrganizationsAccessReportResponse->IsTruncated;
    my $JobCompletionDate =
      $GetOrganizationsAccessReportResponse->JobCompletionDate;
    my $JobCreationDate =
      $GetOrganizationsAccessReportResponse->JobCreationDate;
    my $JobStatus = $GetOrganizationsAccessReportResponse->JobStatus;
    my $NumberOfServicesAccessible =
      $GetOrganizationsAccessReportResponse->NumberOfServicesAccessible;
    my $NumberOfServicesNotAccessed =
      $GetOrganizationsAccessReportResponse->NumberOfServicesNotAccessed;

    # Returns a L<Paws::IAM::GetOrganizationsAccessReportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GetOrganizationsAccessReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The identifier of the request generated by the
GenerateOrganizationsAccessReport operation.



=head2 Marker => Str

Use this parameter only when paginating results and only after you
receive a response indicating that the results are truncated. Set it to
the value of the C<Marker> element in the response that you received to
indicate where the next call should start.



=head2 MaxItems => Int

Use this only when paginating results to indicate the maximum number of
items you want in the response. If additional items exist beyond the
maximum you specify, the C<IsTruncated> response element is C<true>.

If you do not include this parameter, the number of items defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the C<IsTruncated> response element
returns C<true>, and C<Marker> contains a value to include in the
subsequent call that tells the service where to continue from.



=head2 SortKey => Str

The key that is used to sort the results. If you choose the namespace
key, the results are returned in alphabetical order. If you choose the
time key, the results are sorted numerically by the date and time.

Valid values are: C<"SERVICE_NAMESPACE_ASCENDING">, C<"SERVICE_NAMESPACE_DESCENDING">, C<"LAST_AUTHENTICATED_TIME_ASCENDING">, C<"LAST_AUTHENTICATED_TIME_DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOrganizationsAccessReport in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

