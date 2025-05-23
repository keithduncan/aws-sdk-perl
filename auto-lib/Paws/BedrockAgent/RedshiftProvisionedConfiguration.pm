# Generated by default/object.tt
package Paws::BedrockAgent::RedshiftProvisionedConfiguration;
  use Moose;
  has AuthConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::RedshiftProvisionedAuthConfiguration', request_name => 'authConfiguration', traits => ['NameInRequest'], required => 1);
  has ClusterIdentifier => (is => 'ro', isa => 'Str', request_name => 'clusterIdentifier', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::RedshiftProvisionedConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::RedshiftProvisionedConfiguration object:

  $service_obj->Method(Att1 => { AuthConfiguration => $value, ..., ClusterIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::RedshiftProvisionedConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthConfiguration

=head1 DESCRIPTION

Contains configurations for a provisioned Amazon Redshift query engine.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthConfiguration => L<Paws::BedrockAgent::RedshiftProvisionedAuthConfiguration>

Specifies configurations for authentication to Amazon Redshift.


=head2 B<REQUIRED> ClusterIdentifier => Str

The ID of the Amazon Redshift cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

