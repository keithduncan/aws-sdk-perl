
package Paws::IoT::DisassociateSbomFromPackageVersion;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has PackageName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'packageName', required => 1);
  has VersionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'versionName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateSbomFromPackageVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/{packageName}/versions/{versionName}/sbom');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DisassociateSbomFromPackageVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DisassociateSbomFromPackageVersion - Arguments for method DisassociateSbomFromPackageVersion on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateSbomFromPackageVersion on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DisassociateSbomFromPackageVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateSbomFromPackageVersion.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DisassociateSbomFromPackageVersionResponse =
      $iot->DisassociateSbomFromPackageVersion(
      PackageName => 'MyPackageName',
      VersionName => 'MyVersionName',
      ClientToken => 'MyClientToken',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DisassociateSbomFromPackageVersion>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 B<REQUIRED> PackageName => Str

The name of the new software package.



=head2 B<REQUIRED> VersionName => Str

The name of the new package version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateSbomFromPackageVersion in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

