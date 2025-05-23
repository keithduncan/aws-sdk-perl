# Generated by default/object.tt
package Paws::ECRPublic::RepositoryCatalogDataInput;
  use Moose;
  has AboutText => (is => 'ro', isa => 'Str', request_name => 'aboutText', traits => ['NameInRequest']);
  has Architectures => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'architectures', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LogoImageBlob => (is => 'ro', isa => 'Str', request_name => 'logoImageBlob', traits => ['NameInRequest']);
  has OperatingSystems => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'operatingSystems', traits => ['NameInRequest']);
  has UsageText => (is => 'ro', isa => 'Str', request_name => 'usageText', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::RepositoryCatalogDataInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECRPublic::RepositoryCatalogDataInput object:

  $service_obj->Method(Att1 => { AboutText => $value, ..., UsageText => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECRPublic::RepositoryCatalogDataInput object:

  $result = $service_obj->Method(...);
  $result->Att1->AboutText

=head1 DESCRIPTION

An object that contains the catalog data for a repository. This data is
publicly visible in the Amazon ECR Public Gallery.

=head1 ATTRIBUTES


=head2 AboutText => Str

A detailed description of the contents of the repository. It's publicly
visible in the Amazon ECR Public Gallery. The text must be in markdown
format.


=head2 Architectures => ArrayRef[Str|Undef]

The system architecture that the images in the repository are
compatible with. On the Amazon ECR Public Gallery, the following
supported architectures appear as badges on the repository and are used
as search filters.

If an unsupported tag is added to your repository catalog data, it's
associated with the repository and can be retrieved using the API but
isn't discoverable in the Amazon ECR Public Gallery.

=over

=item *

C<ARM>

=item *

C<ARM 64>

=item *

C<x86>

=item *

C<x86-64>

=back



=head2 Description => Str

A short description of the contents of the repository. This text
appears in both the image details and also when searching for
repositories on the Amazon ECR Public Gallery.


=head2 LogoImageBlob => Str

The base64-encoded repository logo payload.

The repository logo is only publicly visible in the Amazon ECR Public
Gallery for verified accounts.


=head2 OperatingSystems => ArrayRef[Str|Undef]

The operating systems that the images in the repository are compatible
with. On the Amazon ECR Public Gallery, the following supported
operating systems appear as badges on the repository and are used as
search filters.

If an unsupported tag is added to your repository catalog data, it's
associated with the repository and can be retrieved using the API but
isn't discoverable in the Amazon ECR Public Gallery.

=over

=item *

C<Linux>

=item *

C<Windows>

=back



=head2 UsageText => Str

Detailed information about how to use the contents of the repository.
It's publicly visible in the Amazon ECR Public Gallery. The usage text
provides context, support information, and additional usage details for
users of the repository. The text must be in markdown format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECRPublic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

