
package Paws::IoT::GetPackageConfiguration;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPackageConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/package-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::GetPackageConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetPackageConfiguration - Arguments for method GetPackageConfiguration on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPackageConfiguration on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method GetPackageConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPackageConfiguration.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $GetPackageConfigurationResponse = $iot->GetPackageConfiguration();

    # Results:
    my $VersionUpdateByJobsConfig =
      $GetPackageConfigurationResponse->VersionUpdateByJobsConfig;

    # Returns a L<Paws::IoT::GetPackageConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/GetPackageConfiguration>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPackageConfiguration in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

