
package Paws::DMS::DeleteConnection;
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationInstanceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DeleteConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteConnection - Arguments for method DeleteConnection on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConnection on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DeleteConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConnection.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    # Delete Connection
    # Deletes the connection between the replication instance and the endpoint.
    my $DeleteConnectionResponse = $dms->DeleteConnection(
      'EndpointArn' =>
'arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM',
      'ReplicationInstanceArn' =>
        'arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ'
    );

    # Results:
    my $Connection = $DeleteConnectionResponse->Connection;

    # Returns a L<Paws::DMS::DeleteConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DeleteConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointArn => Str

The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.



=head2 B<REQUIRED> ReplicationInstanceArn => Str

The Amazon Resource Name (ARN) of the replication instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConnection in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

