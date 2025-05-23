# Generated by default/object.tt
package Paws::Forecast::WhatIfAnalysisSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has ForecastArn => (is => 'ro', isa => 'Str');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has WhatIfAnalysisArn => (is => 'ro', isa => 'Str');
  has WhatIfAnalysisName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::WhatIfAnalysisSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::WhatIfAnalysisSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., WhatIfAnalysisName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::WhatIfAnalysisSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Provides a summary of the what-if analysis properties used in the
ListWhatIfAnalyses operation. To get the complete set of properties,
call the DescribeWhatIfAnalysis operation, and provide the
C<WhatIfAnalysisArn> that is listed in the summary.

=head1 ATTRIBUTES


=head2 CreationTime => Str

When the what-if analysis was created.


=head2 ForecastArn => Str

The Amazon Resource Name (ARN) of the baseline forecast that is being
used in this what-if analysis.


=head2 LastModificationTime => Str

The last time the resource was modified. The timestamp depends on the
status of the job:

=over

=item *

C<CREATE_PENDING> - The C<CreationTime>.

=item *

C<CREATE_IN_PROGRESS> - The current timestamp.

=item *

C<CREATE_STOPPING> - The current timestamp.

=item *

C<CREATE_STOPPED> - When the job stopped.

=item *

C<ACTIVE> or C<CREATE_FAILED> - When the job finished or failed.

=back



=head2 Message => Str

If an error occurred, an informational message about the error.


=head2 Status => Str

The status of the what-if analysis. States include:

=over

=item *

C<ACTIVE>

=item *

C<CREATE_PENDING>, C<CREATE_IN_PROGRESS>, C<CREATE_FAILED>

=item *

C<CREATE_STOPPING>, C<CREATE_STOPPED>

=item *

C<DELETE_PENDING>, C<DELETE_IN_PROGRESS>, C<DELETE_FAILED>

=back

The C<Status> of the what-if analysis must be C<ACTIVE> before you can
access the analysis.


=head2 WhatIfAnalysisArn => Str

The Amazon Resource Name (ARN) of the what-if analysis.


=head2 WhatIfAnalysisName => Str

The name of the what-if analysis.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

