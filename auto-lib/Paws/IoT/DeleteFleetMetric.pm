
package Paws::IoT::DeleteFleetMetric;
  use Moose;
  has ExpectedVersion => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'expectedVersion');
  has MetricName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'metricName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFleetMetric');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/fleet-metric/{metricName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteFleetMetric - Arguments for method DeleteFleetMetric on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFleetMetric on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteFleetMetric.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFleetMetric.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->DeleteFleetMetric(
      MetricName      => 'MyFleetMetricName',
      ExpectedVersion => 1,                     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteFleetMetric>

=head1 ATTRIBUTES


=head2 ExpectedVersion => Int

The expected version of the fleet metric to delete.



=head2 B<REQUIRED> MetricName => Str

The name of the fleet metric to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFleetMetric in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

