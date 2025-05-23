
package Paws::WorkSpaces::ImportWorkspaceImage;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Ec2ImageId => (is => 'ro', isa => 'Str', required => 1);
  has ImageDescription => (is => 'ro', isa => 'Str', required => 1);
  has ImageName => (is => 'ro', isa => 'Str', required => 1);
  has IngestionProcess => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportWorkspaceImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::ImportWorkspaceImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ImportWorkspaceImage - Arguments for method ImportWorkspaceImage on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportWorkspaceImage on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method ImportWorkspaceImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportWorkspaceImage.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $ImportWorkspaceImageResult = $workspaces->ImportWorkspaceImage(
      Ec2ImageId       => 'MyEc2ImageId',
      ImageDescription => 'MyWorkspaceImageDescription',
      ImageName        => 'MyWorkspaceImageName',
      IngestionProcess => 'BYOL_REGULAR',
      Applications     => [
        'Microsoft_Office_2016',
        ...    # values: Microsoft_Office_2016, Microsoft_Office_2019
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 127
          Value => 'MyTagValue',    # max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ImageId = $ImportWorkspaceImageResult->ImageId;

    # Returns a L<Paws::WorkSpaces::ImportWorkspaceImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/ImportWorkspaceImage>

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[Str|Undef]

If specified, the version of Microsoft Office to subscribe to. Valid
only for Windows 10 and 11 BYOL images. For more information about
subscribing to Office for BYOL images, see Bring Your Own Windows
Desktop Licenses
(https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html).

=over

=item *

Although this parameter is an array, only one item is allowed at this
time.

=item *

During the image import process, non-GPU DCV (formerly WSP) WorkSpaces
with Windows 11 support only C<Microsoft_Office_2019>. GPU DCV
(formerly WSP) WorkSpaces with Windows 11 do not support Office
installation.

=back




=head2 B<REQUIRED> Ec2ImageId => Str

The identifier of the EC2 image.



=head2 B<REQUIRED> ImageDescription => Str

The description of the WorkSpace image.



=head2 B<REQUIRED> ImageName => Str

The name of the WorkSpace image.



=head2 B<REQUIRED> IngestionProcess => Str

The ingestion process to be used when importing the image, depending on
which protocol you want to use for your BYOL Workspace image, either
PCoIP, WSP, or bring your own protocol (BYOP). To use DCV, specify a
value that ends in C<_WSP>. To use PCoIP, specify a value that does not
end in C<_WSP>. To use BYOP, specify a value that ends in C<_BYOP>.

For non-GPU-enabled bundles (bundles other than Graphics or
GraphicsPro), specify C<BYOL_REGULAR>, C<BYOL_REGULAR_WSP>, or
C<BYOL_REGULAR_BYOP>, depending on the protocol.

The C<BYOL_REGULAR_BYOP> and C<BYOL_GRAPHICS_G4DN_BYOP> values are only
supported by Amazon WorkSpaces Core. Contact your account team to be
allow-listed to use these values. For more information, see Amazon
WorkSpaces Core (http://aws.amazon.com/workspaces/core/).

Valid values are: C<"BYOL_REGULAR">, C<"BYOL_GRAPHICS">, C<"BYOL_GRAPHICSPRO">, C<"BYOL_GRAPHICS_G4DN">, C<"BYOL_REGULAR_WSP">, C<"BYOL_GRAPHICS_G4DN_WSP">, C<"BYOL_REGULAR_BYOP">, C<"BYOL_GRAPHICS_G4DN_BYOP">

=head2 Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]

The tags. Each WorkSpaces resource can have a maximum of 50 tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportWorkspaceImage in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

