# Generated by default/object.tt
package Paws::Resiliencehub::AppAssessment;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', request_name => 'appArn', traits => ['NameInRequest']);
  has AppVersion => (is => 'ro', isa => 'Str', request_name => 'appVersion', traits => ['NameInRequest']);
  has AssessmentArn => (is => 'ro', isa => 'Str', request_name => 'assessmentArn', traits => ['NameInRequest'], required => 1);
  has AssessmentName => (is => 'ro', isa => 'Str', request_name => 'assessmentName', traits => ['NameInRequest']);
  has AssessmentStatus => (is => 'ro', isa => 'Str', request_name => 'assessmentStatus', traits => ['NameInRequest'], required => 1);
  has Compliance => (is => 'ro', isa => 'Paws::Resiliencehub::AssessmentCompliance', request_name => 'compliance', traits => ['NameInRequest']);
  has ComplianceStatus => (is => 'ro', isa => 'Str', request_name => 'complianceStatus', traits => ['NameInRequest']);
  has Cost => (is => 'ro', isa => 'Paws::Resiliencehub::Cost', request_name => 'cost', traits => ['NameInRequest']);
  has DriftStatus => (is => 'ro', isa => 'Str', request_name => 'driftStatus', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has Invoker => (is => 'ro', isa => 'Str', request_name => 'invoker', traits => ['NameInRequest'], required => 1);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
  has Policy => (is => 'ro', isa => 'Paws::Resiliencehub::ResiliencyPolicy', request_name => 'policy', traits => ['NameInRequest']);
  has ResiliencyScore => (is => 'ro', isa => 'Paws::Resiliencehub::ResiliencyScore', request_name => 'resiliencyScore', traits => ['NameInRequest']);
  has ResourceErrorsDetails => (is => 'ro', isa => 'Paws::Resiliencehub::ResourceErrorsDetails', request_name => 'resourceErrorsDetails', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has Summary => (is => 'ro', isa => 'Paws::Resiliencehub::AssessmentSummary', request_name => 'summary', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::Resiliencehub::TagMap', request_name => 'tags', traits => ['NameInRequest']);
  has VersionName => (is => 'ro', isa => 'Str', request_name => 'versionName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::AppAssessment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Resiliencehub::AppAssessment object:

  $service_obj->Method(Att1 => { AppArn => $value, ..., VersionName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Resiliencehub::AppAssessment object:

  $result = $service_obj->Method(...);
  $result->Att1->AppArn

=head1 DESCRIPTION

Defines an application assessment.

=head1 ATTRIBUTES


=head2 AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.


=head2 AppVersion => Str

Version of an application.


=head2 B<REQUIRED> AssessmentArn => Str

Amazon Resource Name (ARN) of the assessment. The format for this ARN
is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app-assessment/C<app-id>.
For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.


=head2 AssessmentName => Str

Name of the assessment.


=head2 B<REQUIRED> AssessmentStatus => Str

Current status of the assessment for the resiliency policy.


=head2 Compliance => L<Paws::Resiliencehub::AssessmentCompliance>

Application compliance against the resiliency policy.


=head2 ComplianceStatus => Str

Current status of the compliance for the resiliency policy.


=head2 Cost => L<Paws::Resiliencehub::Cost>

Cost for the application.


=head2 DriftStatus => Str

Indicates if compliance drifts (deviations) were detected while running
an assessment for your application.


=head2 EndTime => Str

End time for the action.


=head2 B<REQUIRED> Invoker => Str

The entity that invoked the assessment.


=head2 Message => Str

Error or warning message from the assessment execution


=head2 Policy => L<Paws::Resiliencehub::ResiliencyPolicy>

Resiliency policy of an application.


=head2 ResiliencyScore => L<Paws::Resiliencehub::ResiliencyScore>

Current resiliency score for an application.


=head2 ResourceErrorsDetails => L<Paws::Resiliencehub::ResourceErrorsDetails>

A resource error object containing a list of errors retrieving an
application's resources.


=head2 StartTime => Str

Starting time for the action.


=head2 Summary => L<Paws::Resiliencehub::AssessmentSummary>

Indicates the AI-generated summary for the Resilience Hub assessment,
providing a concise overview that highlights the top risks and
recommendations.

This property is available only in the US East (N. Virginia) Region.


=head2 Tags => L<Paws::Resiliencehub::TagMap>

Tags assigned to the resource. A tag is a label that you assign to an
Amazon Web Services resource. Each tag consists of a key/value pair.


=head2 VersionName => Str

Version name of the published application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

