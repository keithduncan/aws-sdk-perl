
package Paws::GameLift::GetInstanceAccess;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstanceAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::GetInstanceAccessOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GetInstanceAccess - Arguments for method GetInstanceAccess on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInstanceAccess on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method GetInstanceAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInstanceAccess.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $GetInstanceAccessOutput = $gamelift->GetInstanceAccess(
      FleetId    => 'MyFleetIdOrArn',
      InstanceId => 'MyInstanceId',

    );

    # Results:
    my $InstanceAccess = $GetInstanceAccessOutput->InstanceAccess;

    # Returns a L<Paws::GameLift::GetInstanceAccessOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/GetInstanceAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

A unique identifier for the fleet that contains the instance you want
to access. You can request access to instances in EC2 fleets with the
following statuses: C<ACTIVATING>, C<ACTIVE>, or C<ERROR>. Use either a
fleet ID or an ARN value.

You can access fleets in C<ERROR> status for a short period of time
before Amazon GameLift deletes them.



=head2 B<REQUIRED> InstanceId => Str

A unique identifier for the instance you want to access. You can access
an instance in any status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInstanceAccess in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

