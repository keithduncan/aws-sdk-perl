# Generated by default/object.tt
package Paws::LookoutEquipment::DataIngestionJobSummary;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str');
  has DatasetName => (is => 'ro', isa => 'Str');
  has IngestionInputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::IngestionInputConfiguration');
  has JobId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DataIngestionJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LookoutEquipment::DataIngestionJobSummary object:

  $service_obj->Method(Att1 => { DatasetArn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LookoutEquipment::DataIngestionJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->DatasetArn

=head1 DESCRIPTION

Provides information about a specified data ingestion job, including
dataset information, data ingestion configuration, and status.

=head1 ATTRIBUTES


=head2 DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset used in the data
ingestion job.


=head2 DatasetName => Str

The name of the dataset used for the data ingestion job.


=head2 IngestionInputConfiguration => L<Paws::LookoutEquipment::IngestionInputConfiguration>

Specifies information for the input data for the data inference job,
including data Amazon S3 location parameters.


=head2 JobId => Str

Indicates the job ID of the data ingestion job.


=head2 Status => Str

Indicates the status of the data ingestion job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

