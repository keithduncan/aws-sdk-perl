
package Paws::SNS::DeleteEndpoint;
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::DeleteEndpoint - Arguments for method DeleteEndpoint on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEndpoint on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method DeleteEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEndpoint.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    $sns->DeleteEndpoint(
      EndpointArn => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/DeleteEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointArn => Str

C<EndpointArn> of endpoint to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEndpoint in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

