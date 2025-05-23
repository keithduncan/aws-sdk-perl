
package Paws::ServiceDiscovery::DeleteNamespace;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNamespace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::DeleteNamespaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::DeleteNamespace - Arguments for method DeleteNamespace on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteNamespace on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method DeleteNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteNamespace.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    # Example: Delete namespace
    # Example: Delete namespace
    my $DeleteNamespaceResponse =
      $servicediscovery->DeleteNamespace( 'Id' => 'ns-ylexjili4cdxy3xm' );

    # Results:
    my $OperationId = $DeleteNamespaceResponse->OperationId;

    # Returns a L<Paws::ServiceDiscovery::DeleteNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/DeleteNamespace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the namespace that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteNamespace in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

