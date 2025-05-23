# Generated by default/object.tt
package Paws::Resiliencehub::LogicalResourceId;
  use Moose;
  has EksSourceName => (is => 'ro', isa => 'Str', request_name => 'eksSourceName', traits => ['NameInRequest']);
  has Identifier => (is => 'ro', isa => 'Str', request_name => 'identifier', traits => ['NameInRequest'], required => 1);
  has LogicalStackName => (is => 'ro', isa => 'Str', request_name => 'logicalStackName', traits => ['NameInRequest']);
  has ResourceGroupName => (is => 'ro', isa => 'Str', request_name => 'resourceGroupName', traits => ['NameInRequest']);
  has TerraformSourceName => (is => 'ro', isa => 'Str', request_name => 'terraformSourceName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::LogicalResourceId

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Resiliencehub::LogicalResourceId object:

  $service_obj->Method(Att1 => { EksSourceName => $value, ..., TerraformSourceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Resiliencehub::LogicalResourceId object:

  $result = $service_obj->Method(...);
  $result->Att1->EksSourceName

=head1 DESCRIPTION

Defines a logical resource identifier.

=head1 ATTRIBUTES


=head2 EksSourceName => Str

Name of the Amazon Elastic Kubernetes Service cluster and namespace
this resource belongs to.

This parameter accepts values in "eks-cluster/namespace" format.


=head2 B<REQUIRED> Identifier => Str

Identifier of the resource.


=head2 LogicalStackName => Str

The name of the CloudFormation stack this resource belongs to.


=head2 ResourceGroupName => Str

The name of the resource group that this resource belongs to.


=head2 TerraformSourceName => Str

The name of the Terraform S3 state file this resource belongs to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

