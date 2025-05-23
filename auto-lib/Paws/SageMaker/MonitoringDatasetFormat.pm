# Generated by default/object.tt
package Paws::SageMaker::MonitoringDatasetFormat;
  use Moose;
  has Csv => (is => 'ro', isa => 'Paws::SageMaker::MonitoringCsvDatasetFormat');
  has Json => (is => 'ro', isa => 'Paws::SageMaker::MonitoringJsonDatasetFormat');
  has Parquet => (is => 'ro', isa => 'Paws::SageMaker::MonitoringParquetDatasetFormat');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::MonitoringDatasetFormat

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::MonitoringDatasetFormat object:

  $service_obj->Method(Att1 => { Csv => $value, ..., Parquet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::MonitoringDatasetFormat object:

  $result = $service_obj->Method(...);
  $result->Att1->Csv

=head1 DESCRIPTION

Represents the dataset format used when running a monitoring job.

=head1 ATTRIBUTES


=head2 Csv => L<Paws::SageMaker::MonitoringCsvDatasetFormat>

The CSV dataset used in the monitoring job.


=head2 Json => L<Paws::SageMaker::MonitoringJsonDatasetFormat>

The JSON dataset used in the monitoring job


=head2 Parquet => L<Paws::SageMaker::MonitoringParquetDatasetFormat>

The Parquet dataset used in the monitoring job



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

