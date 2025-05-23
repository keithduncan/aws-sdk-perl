# Generated by default/object.tt
package Paws::AppMesh::GrpcGatewayRouteMatch;
  use Moose;
  has Hostname => (is => 'ro', isa => 'Paws::AppMesh::GatewayRouteHostnameMatch', request_name => 'hostname', traits => ['NameInRequest']);
  has Metadata => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::GrpcGatewayRouteMetadata]', request_name => 'metadata', traits => ['NameInRequest']);
  has Port => (is => 'ro', isa => 'Int', request_name => 'port', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::GrpcGatewayRouteMatch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::GrpcGatewayRouteMatch object:

  $service_obj->Method(Att1 => { Hostname => $value, ..., ServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::GrpcGatewayRouteMatch object:

  $result = $service_obj->Method(...);
  $result->Att1->Hostname

=head1 DESCRIPTION

An object that represents the criteria for determining a request match.

=head1 ATTRIBUTES


=head2 Hostname => L<Paws::AppMesh::GatewayRouteHostnameMatch>

The gateway route host name to be matched on.


=head2 Metadata => ArrayRef[L<Paws::AppMesh::GrpcGatewayRouteMetadata>]

The gateway route metadata to be matched on.


=head2 Port => Int

The gateway route port to be matched on.


=head2 ServiceName => Str

The fully qualified domain name for the service to match from the
request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

