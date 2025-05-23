
package Paws::Transfer::TestConnection;
  use Moose;
  has ConnectorId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::TestConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::TestConnection - Arguments for method TestConnection on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestConnection on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method TestConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestConnection.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $TestConnectionResponse = $transfer->TestConnection(
      ConnectorId => 'MyConnectorId',

    );

    # Results:
    my $ConnectorId           = $TestConnectionResponse->ConnectorId;
    my $SftpConnectionDetails = $TestConnectionResponse->SftpConnectionDetails;
    my $Status                = $TestConnectionResponse->Status;
    my $StatusMessage         = $TestConnectionResponse->StatusMessage;

    # Returns a L<Paws::Transfer::TestConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/TestConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorId => Str

The unique identifier for the connector.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestConnection in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

