
package Paws::Config::StopConfigurationRecorder;
  use Moose;
  has ConfigurationRecorderName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopConfigurationRecorder');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::StopConfigurationRecorder - Arguments for method StopConfigurationRecorder on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopConfigurationRecorder on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method StopConfigurationRecorder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopConfigurationRecorder.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    $config->StopConfigurationRecorder(
      ConfigurationRecorderName => 'MyRecorderName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/StopConfigurationRecorder>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationRecorderName => Str

The name of the customer managed configuration recorder that you want
to stop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopConfigurationRecorder in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

