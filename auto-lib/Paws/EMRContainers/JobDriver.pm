# Generated by default/object.tt
package Paws::EMRContainers::JobDriver;
  use Moose;
  has SparkSqlJobDriver => (is => 'ro', isa => 'Paws::EMRContainers::SparkSqlJobDriver', request_name => 'sparkSqlJobDriver', traits => ['NameInRequest']);
  has SparkSubmitJobDriver => (is => 'ro', isa => 'Paws::EMRContainers::SparkSubmitJobDriver', request_name => 'sparkSubmitJobDriver', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::JobDriver

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMRContainers::JobDriver object:

  $service_obj->Method(Att1 => { SparkSqlJobDriver => $value, ..., SparkSubmitJobDriver => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMRContainers::JobDriver object:

  $result = $service_obj->Method(...);
  $result->Att1->SparkSqlJobDriver

=head1 DESCRIPTION

Specify the driver that the job runs on. Exactly one of the two
available job drivers is required, either sparkSqlJobDriver or
sparkSubmitJobDriver.

=head1 ATTRIBUTES


=head2 SparkSqlJobDriver => L<Paws::EMRContainers::SparkSqlJobDriver>

The job driver for job type.


=head2 SparkSubmitJobDriver => L<Paws::EMRContainers::SparkSubmitJobDriver>

The job driver parameters specified for spark submit.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

