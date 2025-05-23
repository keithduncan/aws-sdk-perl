
package Paws::RDS::ModifyDBParameterGroup;
  use Moose;
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Parameter]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBParameterGroupNameMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBParameterGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBParameterGroup - Arguments for method ModifyDBParameterGroup on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBParameterGroup on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyDBParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBParameterGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
   # To change DB parameter group settings
   # This example immediately changes the specified setting for the specified DB
   # parameter group.
    my $DBParameterGroupNameMessage = $rds->ModifyDBParameterGroup(
      'DBParameterGroupName' => 'mymysqlparametergroup',
      'Parameters'           => [

        {
          'ApplyMethod'    => 'immediate',
          'ParameterName'  => 'time_zone',
          'ParameterValue' => 'America/Phoenix'
        }
      ]
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBParameterGroupName => Str

The name of the DB parameter group.

Constraints:

=over

=item *

If supplied, must match the name of an existing C<DBParameterGroup>.

=back




=head2 B<REQUIRED> Parameters => ArrayRef[L<Paws::RDS::Parameter>]

An array of parameter names, values, and the application methods for
the parameter update. At least one parameter name, value, and
application method must be supplied; later arguments are optional. A
maximum of 20 parameters can be modified in a single request.

Valid Values (for the application method): C<immediate |
pending-reboot>

You can use the C<immediate> value with dynamic parameters only. You
can use the C<pending-reboot> value for both dynamic and static
parameters.

When the application method is C<immediate>, changes to dynamic
parameters are applied immediately to the DB instances associated with
the parameter group.

When the application method is C<pending-reboot>, changes to dynamic
and static parameters are applied after a reboot without failover to
the DB instances associated with the parameter group.

You can't use C<pending-reboot> with dynamic parameters on RDS for SQL
Server DB instances. Use C<immediate>.

For more information on modifying DB parameters, see Working with DB
parameter groups
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithParamGroups.html)
in the I<Amazon RDS User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBParameterGroup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

