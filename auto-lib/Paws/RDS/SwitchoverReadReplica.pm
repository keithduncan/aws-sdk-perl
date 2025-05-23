
package Paws::RDS::SwitchoverReadReplica;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SwitchoverReadReplica');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::SwitchoverReadReplicaResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SwitchoverReadReplicaResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::SwitchoverReadReplica - Arguments for method SwitchoverReadReplica on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SwitchoverReadReplica on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method SwitchoverReadReplica.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SwitchoverReadReplica.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $SwitchoverReadReplicaResult = $rds->SwitchoverReadReplica(
      DBInstanceIdentifier => 'MyString',

    );

    # Results:
    my $DBInstance = $SwitchoverReadReplicaResult->DBInstance;

    # Returns a L<Paws::RDS::SwitchoverReadReplicaResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/SwitchoverReadReplica>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBInstanceIdentifier => Str

The DB instance identifier of the current standby database. This value
is stored as a lowercase string.

Constraints:

=over

=item *

Must match the identier of an existing Oracle read replica DB instance.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SwitchoverReadReplica in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

