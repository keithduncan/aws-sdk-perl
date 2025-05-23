
package Paws::GameLift::DescribeFleetPortSettings;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has Location => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFleetPortSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeFleetPortSettingsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetPortSettings - Arguments for method DescribeFleetPortSettings on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFleetPortSettings on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeFleetPortSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFleetPortSettings.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeFleetPortSettingsOutput = $gamelift->DescribeFleetPortSettings(
      FleetId  => 'MyFleetIdOrArn',
      Location => 'MyLocationStringModel',    # OPTIONAL
    );

    # Results:
    my $FleetArn = $DescribeFleetPortSettingsOutput->FleetArn;
    my $FleetId  = $DescribeFleetPortSettingsOutput->FleetId;
    my $InboundPermissions =
      $DescribeFleetPortSettingsOutput->InboundPermissions;
    my $Location     = $DescribeFleetPortSettingsOutput->Location;
    my $UpdateStatus = $DescribeFleetPortSettingsOutput->UpdateStatus;

    # Returns a L<Paws::GameLift::DescribeFleetPortSettingsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeFleetPortSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

A unique identifier for the fleet to retrieve port settings for. You
can use either the fleet ID or ARN value.



=head2 Location => Str

A remote location to check for status of port setting updates. Use the
Amazon Web Services Region code format, such as C<us-west-2>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFleetPortSettings in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

