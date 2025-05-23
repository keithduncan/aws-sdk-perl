# Generated by default/object.tt
package Paws::LookoutMetrics::AthenaSourceConfig;
  use Moose;
  has BackTestConfiguration => (is => 'ro', isa => 'Paws::LookoutMetrics::BackTestConfiguration');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DataCatalog => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has S3ResultsPath => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');
  has WorkGroupName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::AthenaSourceConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LookoutMetrics::AthenaSourceConfig object:

  $service_obj->Method(Att1 => { BackTestConfiguration => $value, ..., WorkGroupName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LookoutMetrics::AthenaSourceConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->BackTestConfiguration

=head1 DESCRIPTION

Details about an Amazon Athena datasource.

=head1 ATTRIBUTES


=head2 BackTestConfiguration => L<Paws::LookoutMetrics::BackTestConfiguration>

Settings for backtest mode.


=head2 DatabaseName => Str

The database's name.


=head2 DataCatalog => Str

The database's data catalog.


=head2 RoleArn => Str

An IAM role that gives Amazon Lookout for Metrics permission to access
the data.


=head2 S3ResultsPath => Str

The database's results path.


=head2 TableName => Str

The database's table name.


=head2 WorkGroupName => Str

The database's work group name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

