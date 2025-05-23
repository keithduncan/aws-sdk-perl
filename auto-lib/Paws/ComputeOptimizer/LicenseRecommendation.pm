# Generated by default/object.tt
package Paws::ComputeOptimizer::LicenseRecommendation;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has CurrentLicenseConfiguration => (is => 'ro', isa => 'Paws::ComputeOptimizer::LicenseConfiguration', request_name => 'currentLicenseConfiguration', traits => ['NameInRequest']);
  has Finding => (is => 'ro', isa => 'Str', request_name => 'finding', traits => ['NameInRequest']);
  has FindingReasonCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'findingReasonCodes', traits => ['NameInRequest']);
  has LastRefreshTimestamp => (is => 'ro', isa => 'Str', request_name => 'lastRefreshTimestamp', traits => ['NameInRequest']);
  has LicenseRecommendationOptions => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::LicenseRecommendationOption]', request_name => 'licenseRecommendationOptions', traits => ['NameInRequest']);
  has LookbackPeriodInDays => (is => 'ro', isa => 'Num', request_name => 'lookbackPeriodInDays', traits => ['NameInRequest']);
  has ResourceArn => (is => 'ro', isa => 'Str', request_name => 'resourceArn', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::Tag]', request_name => 'tags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::LicenseRecommendation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::LicenseRecommendation object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::LicenseRecommendation object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Describes a license recommendation for an EC2 instance.

=head1 ATTRIBUTES


=head2 AccountId => Str

The Amazon Web Services account ID of the license.


=head2 CurrentLicenseConfiguration => L<Paws::ComputeOptimizer::LicenseConfiguration>

An object that describes the current configuration of an instance that
runs on a license.


=head2 Finding => Str

The finding classification for an instance that runs on a license.

Findings include:

=over

=item *

C<InsufficentMetrics> E<mdash> When Compute Optimizer detects that your
CloudWatch Application Insights isn't enabled or is enabled with
insufficient permissions.

=item *

C<NotOptimized> E<mdash> When Compute Optimizer detects that your EC2
infrastructure isn't using any of the SQL server license features
you're paying for, a license is considered not optimized.

=item *

C<Optimized> E<mdash> When Compute Optimizer detects that all
specifications of your license meet the performance requirements of
your workload.

=back



=head2 FindingReasonCodes => ArrayRef[Str|Undef]

The reason for the finding classification for an instance that runs on
a license.

Finding reason codes include:

=over

=item *

C<Optimized> E<mdash> All specifications of your license meet the
performance requirements of your workload.

=item *

C<LicenseOverprovisioned> E<mdash> A license is considered
over-provisioned when your license can be downgraded while still
meeting the performance requirements of your workload.

=item *

C<InvalidCloudwatchApplicationInsights> E<mdash> CloudWatch Application
Insights isn't configured properly.

=item *

C<CloudwatchApplicationInsightsError> E<mdash> There is a CloudWatch
Application Insights error.

=back



=head2 LastRefreshTimestamp => Str

The timestamp of when the license recommendation was last generated.


=head2 LicenseRecommendationOptions => ArrayRef[L<Paws::ComputeOptimizer::LicenseRecommendationOption>]

An array of objects that describe the license recommendation options.


=head2 LookbackPeriodInDays => Num

The number of days for which utilization metrics were analyzed for an
instance that runs on a license.


=head2 ResourceArn => Str

The ARN that identifies the Amazon EC2 instance.


=head2 Tags => ArrayRef[L<Paws::ComputeOptimizer::Tag>]

A list of tags assigned to an EC2 instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

