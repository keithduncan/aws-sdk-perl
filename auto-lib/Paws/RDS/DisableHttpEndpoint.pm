
package Paws::RDS::DisableHttpEndpoint;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableHttpEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DisableHttpEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DisableHttpEndpointResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DisableHttpEndpoint - Arguments for method DisableHttpEndpoint on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableHttpEndpoint on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DisableHttpEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableHttpEndpoint.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DisableHttpEndpointResponse = $rds->DisableHttpEndpoint(
      ResourceArn => 'MyString',

    );

    # Results:
    my $HttpEndpointEnabled = $DisableHttpEndpointResponse->HttpEndpointEnabled;
    my $ResourceArn         = $DisableHttpEndpointResponse->ResourceArn;

    # Returns a L<Paws::RDS::DisableHttpEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DisableHttpEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the DB cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableHttpEndpoint in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

