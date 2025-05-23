# Generated by default/object.tt
package Paws::DataZone::GlueRunConfigurationOutput;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has AutoImportDataQualityResult => (is => 'ro', isa => 'Bool', request_name => 'autoImportDataQualityResult', traits => ['NameInRequest']);
  has CatalogName => (is => 'ro', isa => 'Str', request_name => 'catalogName', traits => ['NameInRequest']);
  has DataAccessRole => (is => 'ro', isa => 'Str', request_name => 'dataAccessRole', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);
  has RelationalFilterConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::RelationalFilterConfiguration]', request_name => 'relationalFilterConfigurations', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GlueRunConfigurationOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataZone::GlueRunConfigurationOutput object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., RelationalFilterConfigurations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataZone::GlueRunConfigurationOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

The configuration details of the Amazon Web Services Glue data source.

=head1 ATTRIBUTES


=head2 AccountId => Str

The Amazon Web Services account ID included in the configuration
details of the Amazon Web Services Glue data source.


=head2 AutoImportDataQualityResult => Bool

Specifies whether to automatically import data quality metrics as part
of the data source run.


=head2 CatalogName => Str

The catalog name in the Amazon Web Services Glue run configuration.


=head2 DataAccessRole => Str

The data access role included in the configuration details of the
Amazon Web Services Glue data source.


=head2 Region => Str

The Amazon Web Services region included in the configuration details of
the Amazon Web Services Glue data source.


=head2 B<REQUIRED> RelationalFilterConfigurations => ArrayRef[L<Paws::DataZone::RelationalFilterConfiguration>]

The relational filter configurations included in the configuration
details of the Amazon Web Services Glue data source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

