# Generated by default/object.tt
package Paws::DataZone::GlueConnectionInput;
  use Moose;
  has AthenaProperties => (is => 'ro', isa => 'Paws::DataZone::PropertyMap', request_name => 'athenaProperties', traits => ['NameInRequest']);
  has AuthenticationConfiguration => (is => 'ro', isa => 'Paws::DataZone::AuthenticationConfigurationInput', request_name => 'authenticationConfiguration', traits => ['NameInRequest']);
  has ConnectionProperties => (is => 'ro', isa => 'Paws::DataZone::ConnectionProperties', request_name => 'connectionProperties', traits => ['NameInRequest']);
  has ConnectionType => (is => 'ro', isa => 'Str', request_name => 'connectionType', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has MatchCriteria => (is => 'ro', isa => 'Str', request_name => 'matchCriteria', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has PhysicalConnectionRequirements => (is => 'ro', isa => 'Paws::DataZone::PhysicalConnectionRequirements', request_name => 'physicalConnectionRequirements', traits => ['NameInRequest']);
  has PythonProperties => (is => 'ro', isa => 'Paws::DataZone::PropertyMap', request_name => 'pythonProperties', traits => ['NameInRequest']);
  has SparkProperties => (is => 'ro', isa => 'Paws::DataZone::PropertyMap', request_name => 'sparkProperties', traits => ['NameInRequest']);
  has ValidateCredentials => (is => 'ro', isa => 'Bool', request_name => 'validateCredentials', traits => ['NameInRequest']);
  has ValidateForComputeEnvironments => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'validateForComputeEnvironments', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GlueConnectionInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataZone::GlueConnectionInput object:

  $service_obj->Method(Att1 => { AthenaProperties => $value, ..., ValidateForComputeEnvironments => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataZone::GlueConnectionInput object:

  $result = $service_obj->Method(...);
  $result->Att1->AthenaProperties

=head1 DESCRIPTION

The Amazon Web Services Glue connecton input.

=head1 ATTRIBUTES


=head2 AthenaProperties => L<Paws::DataZone::PropertyMap>

The Amazon Athena properties of the Amazon Web Services Glue
connection.


=head2 AuthenticationConfiguration => L<Paws::DataZone::AuthenticationConfigurationInput>

The authentication configuration of the Amazon Web Services Glue
connection.


=head2 ConnectionProperties => L<Paws::DataZone::ConnectionProperties>

The connection properties of the Amazon Web Services Glue connection.


=head2 ConnectionType => Str

The connection type of the Amazon Web Services Glue connection.


=head2 Description => Str

The description of the Amazon Web Services Glue connection.


=head2 MatchCriteria => Str

The match criteria of the Amazon Web Services Glue connection.


=head2 Name => Str

The name of the Amazon Web Services Glue connection.


=head2 PhysicalConnectionRequirements => L<Paws::DataZone::PhysicalConnectionRequirements>

The physical connection requirements for the Amazon Web Services Glue
connection.


=head2 PythonProperties => L<Paws::DataZone::PropertyMap>

The Python properties of the Amazon Web Services Glue connection.


=head2 SparkProperties => L<Paws::DataZone::PropertyMap>

The Spark properties of the Amazon Web Services Glue connection.


=head2 ValidateCredentials => Bool

Speciefies whether to validate credentials of the Amazon Web Services
Glue connection.


=head2 ValidateForComputeEnvironments => ArrayRef[Str|Undef]

Speciefies whether to validate for compute environments of the Amazon
Web Services Glue connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

