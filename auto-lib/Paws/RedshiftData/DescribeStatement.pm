
package Paws::RedshiftData::DescribeStatement;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStatement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftData::DescribeStatementResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftData::DescribeStatement - Arguments for method DescribeStatement on L<Paws::RedshiftData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStatement on the
L<Redshift Data API Service|Paws::RedshiftData> service. Use the attributes of this class
as arguments to method DescribeStatement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStatement.

=head1 SYNOPSIS

    my $redshift-data = Paws->service('RedshiftData');
    my $DescribeStatementResponse = $redshift -data->DescribeStatement(
      Id => 'MyUUID',

    );

    # Results:
    my $ClusterIdentifier = $DescribeStatementResponse->ClusterIdentifier;
    my $CreatedAt         = $DescribeStatementResponse->CreatedAt;
    my $Database          = $DescribeStatementResponse->Database;
    my $DbUser            = $DescribeStatementResponse->DbUser;
    my $Duration          = $DescribeStatementResponse->Duration;
    my $Error             = $DescribeStatementResponse->Error;
    my $HasResultSet      = $DescribeStatementResponse->HasResultSet;
    my $Id                = $DescribeStatementResponse->Id;
    my $QueryParameters   = $DescribeStatementResponse->QueryParameters;
    my $QueryString       = $DescribeStatementResponse->QueryString;
    my $RedshiftPid       = $DescribeStatementResponse->RedshiftPid;
    my $RedshiftQueryId   = $DescribeStatementResponse->RedshiftQueryId;
    my $ResultFormat      = $DescribeStatementResponse->ResultFormat;
    my $ResultRows        = $DescribeStatementResponse->ResultRows;
    my $ResultSize        = $DescribeStatementResponse->ResultSize;
    my $SecretArn         = $DescribeStatementResponse->SecretArn;
    my $SessionId         = $DescribeStatementResponse->SessionId;
    my $Status            = $DescribeStatementResponse->Status;
    my $SubStatements     = $DescribeStatementResponse->SubStatements;
    my $UpdatedAt         = $DescribeStatementResponse->UpdatedAt;
    my $WorkgroupName     = $DescribeStatementResponse->WorkgroupName;

    # Returns a L<Paws::RedshiftData::DescribeStatementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-data/DescribeStatement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the SQL statement to describe. This value is a
universally unique identifier (UUID) generated by Amazon Redshift Data
API. A suffix indicates the number of the SQL statement. For example,
C<d9b6c0c9-0747-4bf4-b142-e8883122f766:2> has a suffix of C<:2> that
indicates the second SQL statement of a batch query. This identifier is
returned by C<BatchExecuteStatment>, C<ExecuteStatement>, and
C<ListStatements>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStatement in L<Paws::RedshiftData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

