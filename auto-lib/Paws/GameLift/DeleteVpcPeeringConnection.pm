
package Paws::GameLift::DeleteVpcPeeringConnection;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpcPeeringConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DeleteVpcPeeringConnectionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DeleteVpcPeeringConnection - Arguments for method DeleteVpcPeeringConnection on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVpcPeeringConnection on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DeleteVpcPeeringConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVpcPeeringConnection.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DeleteVpcPeeringConnectionOutput =
      $gamelift->DeleteVpcPeeringConnection(
      FleetId                => 'MyFleetId',
      VpcPeeringConnectionId => 'MyNonZeroAndMaxString',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DeleteVpcPeeringConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

A unique identifier for the fleet. This fleet specified must match the
fleet referenced in the VPC peering connection record. You can use
either the fleet ID or ARN value.



=head2 B<REQUIRED> VpcPeeringConnectionId => Str

A unique identifier for a VPC peering connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVpcPeeringConnection in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

