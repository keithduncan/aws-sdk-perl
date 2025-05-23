
package Paws::EFS::DescribeReplicationConfigurations;
  use Moose;
  has FileSystemId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'FileSystemId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReplicationConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/file-systems/replication-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::DescribeReplicationConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeReplicationConfigurations - Arguments for method DescribeReplicationConfigurations on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReplicationConfigurations on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method DescribeReplicationConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReplicationConfigurations.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    my $DescribeReplicationConfigurationsResponse =
      $elasticfilesystem->DescribeReplicationConfigurations(
      FileSystemId => 'MyFileSystemId',    # OPTIONAL
      MaxResults   => 1,                   # OPTIONAL
      NextToken    => 'MyToken',           # OPTIONAL
      );

    # Results:
    my $NextToken    = $DescribeReplicationConfigurationsResponse->NextToken;
    my $Replications = $DescribeReplicationConfigurationsResponse->Replications;

    # Returns a L<Paws::EFS::DescribeReplicationConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/DescribeReplicationConfigurations>

=head1 ATTRIBUTES


=head2 FileSystemId => Str

You can retrieve the replication configuration for a specific file
system by providing its file system ID. For cross-account,cross-region
replication, an account can only describe the replication configuration
for a file system in its own Region.



=head2 MaxResults => Int

(Optional) To limit the number of objects returned in a response, you
can specify the C<MaxItems> parameter. The default value is 100.



=head2 NextToken => Str

C<NextToken> is present if the response is paginated. You can use
C<NextToken> in a subsequent request to fetch the next page of output.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReplicationConfigurations in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

