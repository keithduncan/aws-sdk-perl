
package Paws::AppMesh::CreateMesh;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has MeshName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'meshName', required => 1);
  has Spec => (is => 'ro', isa => 'Paws::AppMesh::MeshSpec', traits => ['NameInRequest'], request_name => 'spec');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::TagRef]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMesh');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20190125/meshes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::CreateMeshOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::CreateMesh - Arguments for method CreateMesh on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMesh on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method CreateMesh.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMesh.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $CreateMeshOutput = $appmesh->CreateMesh(
      MeshName    => 'MyResourceName',
      ClientToken => 'MyString',         # OPTIONAL
      Spec        => {
        EgressFilter => {
          Type => 'ALLOW_ALL',           # values: ALLOW_ALL, DROP_ALL

        },    # OPTIONAL
        ServiceDiscovery => {
          IpPreference => 'IPv6_PREFERRED'
          , # values: IPv6_PREFERRED, IPv4_PREFERRED, IPv4_ONLY, IPv6_ONLY; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Mesh = $CreateMeshOutput->Mesh;

    # Returns a L<Paws::AppMesh::CreateMeshOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/CreateMesh>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.



=head2 B<REQUIRED> MeshName => Str

The name to use for the service mesh.



=head2 Spec => L<Paws::AppMesh::MeshSpec>

The service mesh specification to apply.



=head2 Tags => ArrayRef[L<Paws::AppMesh::TagRef>]

Optional metadata that you can apply to the service mesh to assist with
categorization and organization. Each tag consists of a key and an
optional value, both of which you define. Tag keys can have a maximum
character length of 128 characters, and tag values can have a maximum
length of 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMesh in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

