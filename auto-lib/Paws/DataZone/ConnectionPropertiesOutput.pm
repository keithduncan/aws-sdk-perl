# Generated by default/object.tt
package Paws::DataZone::ConnectionPropertiesOutput;
  use Moose;
  has AthenaProperties => (is => 'ro', isa => 'Paws::DataZone::AthenaPropertiesOutput', request_name => 'athenaProperties', traits => ['NameInRequest']);
  has GlueProperties => (is => 'ro', isa => 'Paws::DataZone::GluePropertiesOutput', request_name => 'glueProperties', traits => ['NameInRequest']);
  has HyperPodProperties => (is => 'ro', isa => 'Paws::DataZone::HyperPodPropertiesOutput', request_name => 'hyperPodProperties', traits => ['NameInRequest']);
  has IamProperties => (is => 'ro', isa => 'Paws::DataZone::IamPropertiesOutput', request_name => 'iamProperties', traits => ['NameInRequest']);
  has RedshiftProperties => (is => 'ro', isa => 'Paws::DataZone::RedshiftPropertiesOutput', request_name => 'redshiftProperties', traits => ['NameInRequest']);
  has SparkEmrProperties => (is => 'ro', isa => 'Paws::DataZone::SparkEmrPropertiesOutput', request_name => 'sparkEmrProperties', traits => ['NameInRequest']);
  has SparkGlueProperties => (is => 'ro', isa => 'Paws::DataZone::SparkGluePropertiesOutput', request_name => 'sparkGlueProperties', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ConnectionPropertiesOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataZone::ConnectionPropertiesOutput object:

  $service_obj->Method(Att1 => { AthenaProperties => $value, ..., SparkGlueProperties => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataZone::ConnectionPropertiesOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->AthenaProperties

=head1 DESCRIPTION

The properties of a connection.

=head1 ATTRIBUTES


=head2 AthenaProperties => L<Paws::DataZone::AthenaPropertiesOutput>

The Amazon Athena properties of a connection.


=head2 GlueProperties => L<Paws::DataZone::GluePropertiesOutput>

The Amazon Web Services Glue properties of a connection.


=head2 HyperPodProperties => L<Paws::DataZone::HyperPodPropertiesOutput>

The hyper pod properties of a connection.


=head2 IamProperties => L<Paws::DataZone::IamPropertiesOutput>

The IAM properties of a connection.


=head2 RedshiftProperties => L<Paws::DataZone::RedshiftPropertiesOutput>

The Amazon Redshift properties of a connection.


=head2 SparkEmrProperties => L<Paws::DataZone::SparkEmrPropertiesOutput>

The Spark EMR properties of a connection.


=head2 SparkGlueProperties => L<Paws::DataZone::SparkGluePropertiesOutput>

The Spark Amazon Web Services Glue properties of a connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

