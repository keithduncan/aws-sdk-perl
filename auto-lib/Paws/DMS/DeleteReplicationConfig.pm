
package Paws::DMS::DeleteReplicationConfig;
  use Moose;
  has ReplicationConfigArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteReplicationConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DeleteReplicationConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteReplicationConfig - Arguments for method DeleteReplicationConfig on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteReplicationConfig on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DeleteReplicationConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteReplicationConfig.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DeleteReplicationConfigResponse = $dms->DeleteReplicationConfig(
      ReplicationConfigArn => 'MyString',

    );

    # Results:
    my $ReplicationConfig = $DeleteReplicationConfigResponse->ReplicationConfig;

    # Returns a L<Paws::DMS::DeleteReplicationConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DeleteReplicationConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReplicationConfigArn => Str

The replication config to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteReplicationConfig in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

