# Generated by default/object.tt
package Paws::TimestreamQuery::ErrorReportLocation;
  use Moose;
  has S3ReportLocation => (is => 'ro', isa => 'Paws::TimestreamQuery::S3ReportLocation');

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::ErrorReportLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TimestreamQuery::ErrorReportLocation object:

  $service_obj->Method(Att1 => { S3ReportLocation => $value, ..., S3ReportLocation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TimestreamQuery::ErrorReportLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->S3ReportLocation

=head1 DESCRIPTION

This contains the location of the error report for a single scheduled
query call.

=head1 ATTRIBUTES


=head2 S3ReportLocation => L<Paws::TimestreamQuery::S3ReportLocation>

The S3 location where error reports are written.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

