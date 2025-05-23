# Generated by default/object.tt
package Paws::SecurityHub::AwsEc2VpcPeeringConnectionDetails;
  use Moose;
  has AccepterVpcInfo => (is => 'ro', isa => 'Paws::SecurityHub::AwsEc2VpcPeeringConnectionVpcInfoDetails');
  has ExpirationTime => (is => 'ro', isa => 'Str');
  has RequesterVpcInfo => (is => 'ro', isa => 'Paws::SecurityHub::AwsEc2VpcPeeringConnectionVpcInfoDetails');
  has Status => (is => 'ro', isa => 'Paws::SecurityHub::AwsEc2VpcPeeringConnectionStatusDetails');
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsEc2VpcPeeringConnectionDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsEc2VpcPeeringConnectionDetails object:

  $service_obj->Method(Att1 => { AccepterVpcInfo => $value, ..., VpcPeeringConnectionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsEc2VpcPeeringConnectionDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AccepterVpcInfo

=head1 DESCRIPTION

Provides information about a VPC peering connection between two VPCs: a
requester VPC that you own and an accepter VPC with which to create the
connection.

=head1 ATTRIBUTES


=head2 AccepterVpcInfo => L<Paws::SecurityHub::AwsEc2VpcPeeringConnectionVpcInfoDetails>

Information about the accepter VPC.


=head2 ExpirationTime => Str

The time at which an unaccepted VPC peering connection will expire.


=head2 RequesterVpcInfo => L<Paws::SecurityHub::AwsEc2VpcPeeringConnectionVpcInfoDetails>

Information about the requester VPC.


=head2 Status => L<Paws::SecurityHub::AwsEc2VpcPeeringConnectionStatusDetails>

The status of the VPC peering connection.


=head2 VpcPeeringConnectionId => Str

The ID of the VPC peering connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

