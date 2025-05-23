
package Paws::WorkSpaces::CreateUpdatedWorkspaceImage;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SourceImageId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUpdatedWorkspaceImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::CreateUpdatedWorkspaceImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateUpdatedWorkspaceImage - Arguments for method CreateUpdatedWorkspaceImage on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUpdatedWorkspaceImage on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method CreateUpdatedWorkspaceImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUpdatedWorkspaceImage.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $CreateUpdatedWorkspaceImageResult =
      $workspaces->CreateUpdatedWorkspaceImage(
      Description   => 'MyWorkspaceImageDescription',
      Name          => 'MyWorkspaceImageName',
      SourceImageId => 'MyWorkspaceImageId',
      Tags          => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 127
          Value => 'MyTagValue',    # max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $ImageId = $CreateUpdatedWorkspaceImageResult->ImageId;

    # Returns a L<Paws::WorkSpaces::CreateUpdatedWorkspaceImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/CreateUpdatedWorkspaceImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Description => Str

A description of whether updates for the WorkSpace image are available.



=head2 B<REQUIRED> Name => Str

The name of the new updated WorkSpace image.



=head2 B<REQUIRED> SourceImageId => Str

The identifier of the source WorkSpace image.



=head2 Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]

The tags that you want to add to the new updated WorkSpace image.

To add tags at the same time when you're creating the updated image,
you must create an IAM policy that grants your IAM user permissions to
use C<workspaces:CreateTags>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUpdatedWorkspaceImage in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

