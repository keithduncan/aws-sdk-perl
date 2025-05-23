# Generated by default/object.tt
package Paws::MigrationHubStrategy::Result;
  use Moose;
  has AnalysisStatus => (is => 'ro', isa => 'Paws::MigrationHubStrategy::AnalysisStatusUnion', request_name => 'analysisStatus', traits => ['NameInRequest']);
  has AnalysisType => (is => 'ro', isa => 'Str', request_name => 'analysisType', traits => ['NameInRequest']);
  has AntipatternReportResultList => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubStrategy::AntipatternReportResult]', request_name => 'antipatternReportResultList', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::Result

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MigrationHubStrategy::Result object:

  $service_obj->Method(Att1 => { AnalysisStatus => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MigrationHubStrategy::Result object:

  $result = $service_obj->Method(...);
  $result->Att1->AnalysisStatus

=head1 DESCRIPTION

The error in server analysis.

=head1 ATTRIBUTES


=head2 AnalysisStatus => L<Paws::MigrationHubStrategy::AnalysisStatusUnion>

The error in server analysis.


=head2 AnalysisType => Str

The error in server analysis.


=head2 AntipatternReportResultList => ArrayRef[L<Paws::MigrationHubStrategy::AntipatternReportResult>]

The error in server analysis.


=head2 StatusMessage => Str

The error in server analysis.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

