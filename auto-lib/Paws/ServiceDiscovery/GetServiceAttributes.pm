
package Paws::ServiceDiscovery::GetServiceAttributes;
  use Moose;
  has ServiceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServiceAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::GetServiceAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::GetServiceAttributes - Arguments for method GetServiceAttributes on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServiceAttributes on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method GetServiceAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServiceAttributes.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    my $GetServiceAttributesResponse = $servicediscovery->GetServiceAttributes(
      ServiceId => 'MyResourceId',

    );

    # Results:
    my $ServiceAttributes = $GetServiceAttributesResponse->ServiceAttributes;

    # Returns a L<Paws::ServiceDiscovery::GetServiceAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/GetServiceAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceId => Str

The ID of the service that you want to get attributes for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServiceAttributes in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

