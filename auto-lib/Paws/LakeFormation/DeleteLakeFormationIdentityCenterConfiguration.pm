
package Paws::LakeFormation::DeleteLakeFormationIdentityCenterConfiguration;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLakeFormationIdentityCenterConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteLakeFormationIdentityCenterConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::DeleteLakeFormationIdentityCenterConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::DeleteLakeFormationIdentityCenterConfiguration - Arguments for method DeleteLakeFormationIdentityCenterConfiguration on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLakeFormationIdentityCenterConfiguration on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method DeleteLakeFormationIdentityCenterConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLakeFormationIdentityCenterConfiguration.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $DeleteLakeFormationIdentityCenterConfigurationResponse =
      $lakeformation->DeleteLakeFormationIdentityCenterConfiguration(
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/DeleteLakeFormationIdentityCenterConfiguration>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, view definition, and other control
information to manage your Lake Formation environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLakeFormationIdentityCenterConfiguration in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

