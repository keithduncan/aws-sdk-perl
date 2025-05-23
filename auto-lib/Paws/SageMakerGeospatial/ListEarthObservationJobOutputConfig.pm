# Generated by default/object.tt
package Paws::SageMakerGeospatial::ListEarthObservationJobOutputConfig;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DurationInSeconds => (is => 'ro', isa => 'Int', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OperationType => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::SageMakerGeospatial::Tags');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::ListEarthObservationJobOutputConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMakerGeospatial::ListEarthObservationJobOutputConfig object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMakerGeospatial::ListEarthObservationJobOutputConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An object containing information about the output file.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the list of the Earth Observation
jobs.


=head2 B<REQUIRED> CreationTime => Str

The creation time.


=head2 B<REQUIRED> DurationInSeconds => Int

The duration of the session, in seconds.


=head2 B<REQUIRED> Name => Str

The names of the Earth Observation jobs in the list.


=head2 B<REQUIRED> OperationType => Str

The operation type for an Earth Observation job.


=head2 B<REQUIRED> Status => Str

The status of the list of the Earth Observation jobs.


=head2 Tags => L<Paws::SageMakerGeospatial::Tags>

Each tag consists of a key and a value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

