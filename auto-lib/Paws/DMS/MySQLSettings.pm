# Generated by default/object.tt
package Paws::DMS::MySQLSettings;
  use Moose;
  has AfterConnectScript => (is => 'ro', isa => 'Str');
  has AuthenticationMethod => (is => 'ro', isa => 'Str');
  has CleanSourceMetadataOnMismatch => (is => 'ro', isa => 'Bool');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has EventsPollInterval => (is => 'ro', isa => 'Int');
  has ExecuteTimeout => (is => 'ro', isa => 'Int');
  has MaxFileSize => (is => 'ro', isa => 'Int');
  has ParallelLoadThreads => (is => 'ro', isa => 'Int');
  has Password => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has SecretsManagerAccessRoleArn => (is => 'ro', isa => 'Str');
  has SecretsManagerSecretId => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str');
  has ServerTimezone => (is => 'ro', isa => 'Str');
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str');
  has TargetDbType => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::MySQLSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::MySQLSettings object:

  $service_obj->Method(Att1 => { AfterConnectScript => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::MySQLSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AfterConnectScript

=head1 DESCRIPTION

Provides information that defines a MySQL endpoint.

=head1 ATTRIBUTES


=head2 AfterConnectScript => Str

Specifies a script to run immediately after DMS connects to the
endpoint. The migration task continues running regardless if the SQL
statement succeeds or fails.

For this parameter, provide the code of the script itself, not the name
of a file containing the script.


=head2 AuthenticationMethod => Str

This attribute allows you to specify the authentication method as "iam
auth".


=head2 CleanSourceMetadataOnMismatch => Bool

Cleans and recreates table metadata information on the replication
instance when a mismatch occurs. For example, in a situation where
running an alter DDL on the table could result in different information
about the table cached in the replication instance.


=head2 DatabaseName => Str

Database name for the endpoint. For a MySQL source or target endpoint,
don't explicitly specify the database using the C<DatabaseName> request
parameter on either the C<CreateEndpoint> or C<ModifyEndpoint> API
call. Specifying C<DatabaseName> when you create or modify a MySQL
endpoint replicates all the task tables to this single database. For
MySQL endpoints, you specify the database only when you specify the
schema in the table-mapping rules of the DMS task.


=head2 EventsPollInterval => Int

Specifies how often to check the binary log for new changes/events when
the database is idle. The default is five seconds.

Example: C<eventsPollInterval=5;>

In the example, DMS checks for changes in the binary logs every five
seconds.


=head2 ExecuteTimeout => Int

Sets the client statement timeout (in seconds) for a MySQL source
endpoint.


=head2 MaxFileSize => Int

Specifies the maximum size (in KB) of any .csv file used to transfer
data to a MySQL-compatible database.

Example: C<maxFileSize=512>


=head2 ParallelLoadThreads => Int

Improves performance when loading data into the MySQL-compatible target
database. Specifies how many threads to use to load the data into the
MySQL-compatible target database. Setting a large number of threads can
have an adverse effect on database performance, because a separate
connection is required for each thread. The default is one.

Example: C<parallelLoadThreads=1>


=head2 Password => Str

Endpoint connection password.


=head2 Port => Int

Endpoint TCP port.


=head2 SecretsManagerAccessRoleArn => Str

The full Amazon Resource Name (ARN) of the IAM role that specifies DMS
as the trusted entity and grants the required permissions to access the
value in C<SecretsManagerSecret>. The role must allow the
C<iam:PassRole> action. C<SecretsManagerSecret> has the value of the
Amazon Web Services Secrets Manager secret that allows access to the
MySQL endpoint.

You can specify one of two sets of values for these permissions. You
can specify the values for this setting and C<SecretsManagerSecretId>.
Or you can specify clear-text values for C<UserName>, C<Password>,
C<ServerName>, and C<Port>. You can't specify both. For more
information on creating this C<SecretsManagerSecret> and the
C<SecretsManagerAccessRoleArn> and C<SecretsManagerSecretId> required
to access it, see Using secrets to access Database Migration Service
resources
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager)
in the I<Database Migration Service User Guide>.


=head2 SecretsManagerSecretId => Str

The full ARN, partial ARN, or friendly name of the
C<SecretsManagerSecret> that contains the MySQL endpoint connection
details.


=head2 ServerName => Str

The host name of the endpoint database.

For an Amazon RDS MySQL instance, this is the output of
DescribeDBInstances
(https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBInstances.html),
in the C< Endpoint
(https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Endpoint.html).Address>
field.

For an Aurora MySQL instance, this is the output of DescribeDBClusters
(https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBClusters.html),
in the C<Endpoint> field.


=head2 ServerTimezone => Str

Specifies the time zone for the source MySQL database.

Example: C<serverTimezone=US/Pacific;>

Note: Do not enclose time zones in single quotes.


=head2 ServiceAccessRoleArn => Str

The IAM role you can use to authenticate when connecting to your
endpoint. Ensure to include C<iam:PassRole> and C<rds-db:connect>
actions in permission policy.


=head2 TargetDbType => Str

Specifies where to migrate source tables on the target, either to a
single database or multiple databases. If you specify
C<SPECIFIC_DATABASE>, specify the database name using the
C<DatabaseName> parameter of the C<Endpoint> object.

Example: C<targetDbType=MULTIPLE_DATABASES>


=head2 Username => Str

Endpoint connection user name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

