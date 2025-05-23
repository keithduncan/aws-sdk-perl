# Generated by default/object.tt
package Paws::FIS::ExperimentReport;
  use Moose;
  has S3Reports => (is => 'ro', isa => 'ArrayRef[Paws::FIS::ExperimentReportS3Report]', request_name => 's3Reports', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Paws::FIS::ExperimentReportState', request_name => 'state', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::ExperimentReport

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FIS::ExperimentReport object:

  $service_obj->Method(Att1 => { S3Reports => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FIS::ExperimentReport object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Reports

=head1 DESCRIPTION

Describes the experiment report.

=head1 ATTRIBUTES


=head2 S3Reports => ArrayRef[L<Paws::FIS::ExperimentReportS3Report>]

The S3 destination of the experiment report.


=head2 State => L<Paws::FIS::ExperimentReportState>

The state of the experiment report.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

