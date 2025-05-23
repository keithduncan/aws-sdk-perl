# Generated by default/object.tt
package Paws::RedshiftServerless::EndpointAccess;
  use Moose;
  has Address => (is => 'ro', isa => 'Str', request_name => 'address', traits => ['NameInRequest']);
  has EndpointArn => (is => 'ro', isa => 'Str', request_name => 'endpointArn', traits => ['NameInRequest']);
  has EndpointCreateTime => (is => 'ro', isa => 'Str', request_name => 'endpointCreateTime', traits => ['NameInRequest']);
  has EndpointName => (is => 'ro', isa => 'Str', request_name => 'endpointName', traits => ['NameInRequest']);
  has EndpointStatus => (is => 'ro', isa => 'Str', request_name => 'endpointStatus', traits => ['NameInRequest']);
  has Port => (is => 'ro', isa => 'Int', request_name => 'port', traits => ['NameInRequest']);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnetIds', traits => ['NameInRequest']);
  has VpcEndpoint => (is => 'ro', isa => 'Paws::RedshiftServerless::VpcEndpoint', request_name => 'vpcEndpoint', traits => ['NameInRequest']);
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::VpcSecurityGroupMembership]', request_name => 'vpcSecurityGroups', traits => ['NameInRequest']);
  has WorkgroupName => (is => 'ro', isa => 'Str', request_name => 'workgroupName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::EndpointAccess

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedshiftServerless::EndpointAccess object:

  $service_obj->Method(Att1 => { Address => $value, ..., WorkgroupName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedshiftServerless::EndpointAccess object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

Information about an Amazon Redshift Serverless VPC endpoint.

=head1 ATTRIBUTES


=head2 Address => Str

The DNS address of the endpoint.


=head2 EndpointArn => Str

The Amazon Resource Name (ARN) of the VPC endpoint.


=head2 EndpointCreateTime => Str

The time that the endpoint was created.


=head2 EndpointName => Str

The name of the VPC endpoint.


=head2 EndpointStatus => Str

The status of the VPC endpoint.


=head2 Port => Int

The port number on which Amazon Redshift Serverless accepts incoming
connections.


=head2 SubnetIds => ArrayRef[Str|Undef]

The unique identifier of subnets where Amazon Redshift Serverless
choose to deploy the VPC endpoint.


=head2 VpcEndpoint => L<Paws::RedshiftServerless::VpcEndpoint>

The connection endpoint for connecting to Amazon Redshift Serverless.


=head2 VpcSecurityGroups => ArrayRef[L<Paws::RedshiftServerless::VpcSecurityGroupMembership>]

The security groups associated with the endpoint.


=head2 WorkgroupName => Str

The name of the workgroup associated with the endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

