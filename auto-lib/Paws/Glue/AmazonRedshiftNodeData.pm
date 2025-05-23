# Generated by default/object.tt
package Paws::Glue::AmazonRedshiftNodeData;
  use Moose;
  has AccessType => (is => 'ro', isa => 'Str');
  has Action => (is => 'ro', isa => 'Str');
  has AdvancedOptions => (is => 'ro', isa => 'ArrayRef[Paws::Glue::AmazonRedshiftAdvancedOption]');
  has CatalogDatabase => (is => 'ro', isa => 'Paws::Glue::Option');
  has CatalogRedshiftSchema => (is => 'ro', isa => 'Str');
  has CatalogRedshiftTable => (is => 'ro', isa => 'Str');
  has CatalogTable => (is => 'ro', isa => 'Paws::Glue::Option');
  has Connection => (is => 'ro', isa => 'Paws::Glue::Option');
  has CrawlerConnection => (is => 'ro', isa => 'Str');
  has IamRole => (is => 'ro', isa => 'Paws::Glue::Option');
  has MergeAction => (is => 'ro', isa => 'Str');
  has MergeClause => (is => 'ro', isa => 'Str');
  has MergeWhenMatched => (is => 'ro', isa => 'Str');
  has MergeWhenNotMatched => (is => 'ro', isa => 'Str');
  has PostAction => (is => 'ro', isa => 'Str');
  has PreAction => (is => 'ro', isa => 'Str');
  has SampleQuery => (is => 'ro', isa => 'Str');
  has Schema => (is => 'ro', isa => 'Paws::Glue::Option');
  has SelectedColumns => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Option]');
  has SourceType => (is => 'ro', isa => 'Str');
  has StagingTable => (is => 'ro', isa => 'Str');
  has Table => (is => 'ro', isa => 'Paws::Glue::Option');
  has TablePrefix => (is => 'ro', isa => 'Str');
  has TableSchema => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Option]');
  has TempDir => (is => 'ro', isa => 'Str');
  has Upsert => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::AmazonRedshiftNodeData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::AmazonRedshiftNodeData object:

  $service_obj->Method(Att1 => { AccessType => $value, ..., Upsert => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::AmazonRedshiftNodeData object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessType

=head1 DESCRIPTION

Specifies an Amazon Redshift node.

=head1 ATTRIBUTES


=head2 AccessType => Str

The access type for the Redshift connection. Can be a direct connection
or catalog connections.


=head2 Action => Str

Specifies how writing to a Redshift cluser will occur.


=head2 AdvancedOptions => ArrayRef[L<Paws::Glue::AmazonRedshiftAdvancedOption>]

Optional values when connecting to the Redshift cluster.


=head2 CatalogDatabase => L<Paws::Glue::Option>

The name of the Glue Data Catalog database when working with a data
catalog.


=head2 CatalogRedshiftSchema => Str

The Redshift schema name when working with a data catalog.


=head2 CatalogRedshiftTable => Str

The database table to read from.


=head2 CatalogTable => L<Paws::Glue::Option>

The Glue Data Catalog table name when working with a data catalog.


=head2 Connection => L<Paws::Glue::Option>

The Glue connection to the Redshift cluster.


=head2 CrawlerConnection => Str

Specifies the name of the connection that is associated with the
catalog table used.


=head2 IamRole => L<Paws::Glue::Option>

Optional. The role name use when connection to S3. The IAM role ill
default to the role on the job when left blank.


=head2 MergeAction => Str

The action used when to detemine how a MERGE in a Redshift sink will be
handled.


=head2 MergeClause => Str

The SQL used in a custom merge to deal with matching records.


=head2 MergeWhenMatched => Str

The action used when to detemine how a MERGE in a Redshift sink will be
handled when an existing record matches a new record.


=head2 MergeWhenNotMatched => Str

The action used when to detemine how a MERGE in a Redshift sink will be
handled when an existing record doesn't match a new record.


=head2 PostAction => Str

The SQL used before a MERGE or APPEND with upsert is run.


=head2 PreAction => Str

The SQL used before a MERGE or APPEND with upsert is run.


=head2 SampleQuery => Str

The SQL used to fetch the data from a Redshift sources when the
SourceType is 'query'.


=head2 Schema => L<Paws::Glue::Option>

The Redshift schema name when working with a direct connection.


=head2 SelectedColumns => ArrayRef[L<Paws::Glue::Option>]

The list of column names used to determine a matching record when doing
a MERGE or APPEND with upsert.


=head2 SourceType => Str

The source type to specify whether a specific table is the source or a
custom query.


=head2 StagingTable => Str

The name of the temporary staging table that is used when doing a MERGE
or APPEND with upsert.


=head2 Table => L<Paws::Glue::Option>

The Redshift table name when working with a direct connection.


=head2 TablePrefix => Str

Specifies the prefix to a table.


=head2 TableSchema => ArrayRef[L<Paws::Glue::Option>]

The array of schema output for a given node.


=head2 TempDir => Str

The Amazon S3 path where temporary data can be staged when copying out
of the database.


=head2 Upsert => Bool

The action used on Redshift sinks when doing an APPEND.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

