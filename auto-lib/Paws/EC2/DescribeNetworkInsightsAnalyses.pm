
package Paws::EC2::DescribeNetworkInsightsAnalyses;
  use Moose;
  has AnalysisEndTime => (is => 'ro', isa => 'Str');
  has AnalysisStartTime => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NetworkInsightsAnalysisIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'NetworkInsightsAnalysisId' );
  has NetworkInsightsPathId => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInsightsAnalyses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeNetworkInsightsAnalysesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkInsightsAnalyses - Arguments for method DescribeNetworkInsightsAnalyses on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNetworkInsightsAnalyses on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeNetworkInsightsAnalyses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNetworkInsightsAnalyses.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeNetworkInsightsAnalysesResult =
      $ec2->DescribeNetworkInsightsAnalyses(
      AnalysisEndTime   => '1970-01-01T01:00:00',    # OPTIONAL
      AnalysisStartTime => '1970-01-01T01:00:00',    # OPTIONAL
      DryRun            => 1,                        # OPTIONAL
      Filters           => [
        {
          Name   => 'MyString',                      # OPTIONAL
          Values => [
            'MyString', ...                          # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults                 => 1,                       # OPTIONAL
      NetworkInsightsAnalysisIds => [ 'MyNetworkInsightsAnalysisId', ... ]
      ,                                                      # OPTIONAL
      NetworkInsightsPathId => 'MyNetworkInsightsPathId',    # OPTIONAL
      NextToken             => 'MyNextToken',                # OPTIONAL
      );

    # Results:
    my $NetworkInsightsAnalyses =
      $DescribeNetworkInsightsAnalysesResult->NetworkInsightsAnalyses;
    my $NextToken = $DescribeNetworkInsightsAnalysesResult->NextToken;

    # Returns a L<Paws::EC2::DescribeNetworkInsightsAnalysesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeNetworkInsightsAnalyses>

=head1 ATTRIBUTES


=head2 AnalysisEndTime => Str

The time when the network insights analyses ended.



=head2 AnalysisStartTime => Str

The time when the network insights analyses started.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters. The following are the possible values:

=over

=item *

path-found - A Boolean value that indicates whether a feasible path is
found.

=item *

status - The status of the analysis (running | succeeded | failed).

=back




=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NetworkInsightsAnalysisIds => ArrayRef[Str|Undef]

The ID of the network insights analyses. You must specify either
analysis IDs or a path ID.



=head2 NetworkInsightsPathId => Str

The ID of the path. You must specify either a path ID or analysis IDs.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNetworkInsightsAnalyses in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

