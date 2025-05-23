
package Paws::WorkSpaces::DescribeWorkspaceDirectories;
  use Moose;
  has DirectoryIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::DescribeWorkspaceDirectoriesFilter]');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has WorkspaceDirectoryNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkspaceDirectories');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DescribeWorkspaceDirectoriesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaceDirectories - Arguments for method DescribeWorkspaceDirectories on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorkspaceDirectories on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DescribeWorkspaceDirectories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorkspaceDirectories.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DescribeWorkspaceDirectoriesResult =
      $workspaces->DescribeWorkspaceDirectories(
      DirectoryIds => [
        'MyDirectoryId', ...    # min: 10, max: 65
      ],    # OPTIONAL
      Filters => [
        {
          Name =>
            'USER_IDENTITY_TYPE',   # values: USER_IDENTITY_TYPE, WORKSPACE_TYPE
          Values => [ 'MyDescribeWorkspaceDirectoriesFilterValue', ... ]
          ,                         # min: 1, max: 25

        },
        ...
      ],    # OPTIONAL
      Limit                   => 1,                                   # OPTIONAL
      NextToken               => 'MyPaginationToken',                 # OPTIONAL
      WorkspaceDirectoryNames => [ 'MyWorkspaceDirectoryName', ... ], # OPTIONAL
      );

    # Results:
    my $Directories = $DescribeWorkspaceDirectoriesResult->Directories;
    my $NextToken   = $DescribeWorkspaceDirectoriesResult->NextToken;

    # Returns a L<Paws::WorkSpaces::DescribeWorkspaceDirectoriesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DescribeWorkspaceDirectories>

=head1 ATTRIBUTES


=head2 DirectoryIds => ArrayRef[Str|Undef]

The identifiers of the directories. If the value is null, all
directories are retrieved.



=head2 Filters => ArrayRef[L<Paws::WorkSpaces::DescribeWorkspaceDirectoriesFilter>]

The filter condition for the WorkSpaces.



=head2 Limit => Int

The maximum number of directories to return.



=head2 NextToken => Str

If you received a C<NextToken> from a previous call that was paginated,
provide this token to receive the next set of results.



=head2 WorkspaceDirectoryNames => ArrayRef[Str|Undef]

The names of the WorkSpace directories.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorkspaceDirectories in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

