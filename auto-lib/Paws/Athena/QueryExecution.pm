# Generated by default/object.tt
package Paws::Athena::QueryExecution;
  use Moose;
  has EngineVersion => (is => 'ro', isa => 'Paws::Athena::EngineVersion');
  has ExecutionParameters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Query => (is => 'ro', isa => 'Str');
  has QueryExecutionContext => (is => 'ro', isa => 'Paws::Athena::QueryExecutionContext');
  has QueryExecutionId => (is => 'ro', isa => 'Str');
  has QueryResultsS3AccessGrantsConfiguration => (is => 'ro', isa => 'Paws::Athena::QueryResultsS3AccessGrantsConfiguration');
  has ResultConfiguration => (is => 'ro', isa => 'Paws::Athena::ResultConfiguration');
  has ResultReuseConfiguration => (is => 'ro', isa => 'Paws::Athena::ResultReuseConfiguration');
  has StatementType => (is => 'ro', isa => 'Str');
  has Statistics => (is => 'ro', isa => 'Paws::Athena::QueryExecutionStatistics');
  has Status => (is => 'ro', isa => 'Paws::Athena::QueryExecutionStatus');
  has SubstatementType => (is => 'ro', isa => 'Str');
  has WorkGroup => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::QueryExecution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::QueryExecution object:

  $service_obj->Method(Att1 => { EngineVersion => $value, ..., WorkGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::QueryExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->EngineVersion

=head1 DESCRIPTION

Information about a single instance of a query execution.

=head1 ATTRIBUTES


=head2 EngineVersion => L<Paws::Athena::EngineVersion>

The engine version that executed the query.


=head2 ExecutionParameters => ArrayRef[Str|Undef]

A list of values for the parameters in a query. The values are applied
sequentially to the parameters in the query in the order in which the
parameters occur. The list of parameters is not returned in the
response.


=head2 Query => Str

The SQL query statements which the query execution ran.


=head2 QueryExecutionContext => L<Paws::Athena::QueryExecutionContext>

The database in which the query execution occurred.


=head2 QueryExecutionId => Str

The unique identifier for each query execution.


=head2 QueryResultsS3AccessGrantsConfiguration => L<Paws::Athena::QueryResultsS3AccessGrantsConfiguration>

Specifies whether Amazon S3 access grants are enabled for query
results.


=head2 ResultConfiguration => L<Paws::Athena::ResultConfiguration>

The location in Amazon S3 where query and calculation results are
stored and the encryption option, if any, used for query results. These
are known as "client-side settings". If workgroup settings override
client-side settings, then the query uses the location for the query
results and the encryption configuration that are specified for the
workgroup.


=head2 ResultReuseConfiguration => L<Paws::Athena::ResultReuseConfiguration>

Specifies the query result reuse behavior that was used for the query.


=head2 StatementType => Str

The type of query statement that was run. C<DDL> indicates DDL query
statements. C<DML> indicates DML (Data Manipulation Language) query
statements, such as C<CREATE TABLE AS SELECT>. C<UTILITY> indicates
query statements other than DDL and DML, such as C<SHOW CREATE TABLE>,
C<EXPLAIN>, C<DESCRIBE>, or C<SHOW TABLES>.


=head2 Statistics => L<Paws::Athena::QueryExecutionStatistics>

Query execution statistics, such as the amount of data scanned, the
amount of time that the query took to process, and the type of
statement that was run.


=head2 Status => L<Paws::Athena::QueryExecutionStatus>

The completion date, current state, submission time, and state change
reason (if applicable) for the query execution.


=head2 SubstatementType => Str

The kind of query statement that was run.


=head2 WorkGroup => Str

The name of the workgroup in which the query ran.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

