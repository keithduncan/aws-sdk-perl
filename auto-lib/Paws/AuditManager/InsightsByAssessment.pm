# Generated by default/object.tt
package Paws::AuditManager::InsightsByAssessment;
  use Moose;
  has AssessmentControlsCountByNoncompliantEvidence => (is => 'ro', isa => 'Int', request_name => 'assessmentControlsCountByNoncompliantEvidence', traits => ['NameInRequest']);
  has CompliantEvidenceCount => (is => 'ro', isa => 'Int', request_name => 'compliantEvidenceCount', traits => ['NameInRequest']);
  has InconclusiveEvidenceCount => (is => 'ro', isa => 'Int', request_name => 'inconclusiveEvidenceCount', traits => ['NameInRequest']);
  has LastUpdated => (is => 'ro', isa => 'Str', request_name => 'lastUpdated', traits => ['NameInRequest']);
  has NoncompliantEvidenceCount => (is => 'ro', isa => 'Int', request_name => 'noncompliantEvidenceCount', traits => ['NameInRequest']);
  has TotalAssessmentControlsCount => (is => 'ro', isa => 'Int', request_name => 'totalAssessmentControlsCount', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::InsightsByAssessment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AuditManager::InsightsByAssessment object:

  $service_obj->Method(Att1 => { AssessmentControlsCountByNoncompliantEvidence => $value, ..., TotalAssessmentControlsCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AuditManager::InsightsByAssessment object:

  $result = $service_obj->Method(...);
  $result->Att1->AssessmentControlsCountByNoncompliantEvidence

=head1 DESCRIPTION

A summary of the latest analytics data for a specific active
assessment.

This summary is a snapshot of the data that was collected on the
C<lastUpdated> date. ItE<rsquo>s important to understand that the
totals in C<InsightsByAssessment> are daily counts based on this date
E<mdash> they arenE<rsquo>t a total sum to date.

The C<InsightsByAssessment> data is eventually consistent. This means
that when you read data from C<InsightsByAssessment>, the response
might not instantly reflect the results of a recently completed write
or update operation. If you repeat your read request after a few hours,
the response returns the latest data.

If you delete an assessment or change its status to inactive,
C<InsightsByAssessment> includes data for that assessment as follows.

=over

=item *

B<Inactive assessments> - If Audit Manager collected evidence for your
assessment before you changed it inactive, that evidence is included in
the C<InsightsByAssessment> counts for that day.

=item *

B<Deleted assessments> - If Audit Manager collected evidence for your
assessment before you deleted it, that evidence isn't included in the
C<InsightsByAssessment> counts for that day.

=back


=head1 ATTRIBUTES


=head2 AssessmentControlsCountByNoncompliantEvidence => Int

The number of assessment controls that collected non-compliant evidence
on the C<lastUpdated> date.


=head2 CompliantEvidenceCount => Int

The number of compliance check evidence that Audit Manager classified
as compliant. This includes evidence that was collected from Security
Hub with a I<Pass> ruling, or collected from Config with a I<Compliant>
ruling.


=head2 InconclusiveEvidenceCount => Int

The amount of evidence without a compliance check ruling. Evidence is
inconclusive if the associated control uses Security Hub or Config as a
data source and you didn't enable those services. This is also the case
if a control uses a data source that doesnE<rsquo>t support compliance
checks (for example, manual evidence, API calls, or CloudTrail).

If evidence has a compliance check status of I<not applicable>, it's
classified as I<inconclusive> in C<InsightsByAssessment> data.


=head2 LastUpdated => Str

The time when the assessment insights were last updated.


=head2 NoncompliantEvidenceCount => Int

The number of compliance check evidence that Audit Manager classified
as non-compliant. This includes evidence that was collected from
Security Hub with a I<Fail> ruling, or collected from Config with a
I<Non-compliant> ruling.


=head2 TotalAssessmentControlsCount => Int

The total number of controls in the assessment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

