# Generated by default/object.tt
package Paws::EMRContainers::SparkSqlJobDriver;
  use Moose;
  has EntryPoint => (is => 'ro', isa => 'Str', request_name => 'entryPoint', traits => ['NameInRequest']);
  has SparkSqlParameters => (is => 'ro', isa => 'Str', request_name => 'sparkSqlParameters', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::SparkSqlJobDriver

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMRContainers::SparkSqlJobDriver object:

  $service_obj->Method(Att1 => { EntryPoint => $value, ..., SparkSqlParameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMRContainers::SparkSqlJobDriver object:

  $result = $service_obj->Method(...);
  $result->Att1->EntryPoint

=head1 DESCRIPTION

The job driver for job type.

=head1 ATTRIBUTES


=head2 EntryPoint => Str

The SQL file to be executed.


=head2 SparkSqlParameters => Str

The Spark parameters to be included in the Spark SQL command.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

