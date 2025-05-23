# Generated by default/object.tt
package Paws::CodeCommit::FileVersion;
  use Moose;
  has BlobId => (is => 'ro', isa => 'Str', request_name => 'blobId', traits => ['NameInRequest']);
  has Commit => (is => 'ro', isa => 'Paws::CodeCommit::Commit', request_name => 'commit', traits => ['NameInRequest']);
  has Path => (is => 'ro', isa => 'Str', request_name => 'path', traits => ['NameInRequest']);
  has RevisionChildren => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'revisionChildren', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::FileVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::FileVersion object:

  $service_obj->Method(Att1 => { BlobId => $value, ..., RevisionChildren => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::FileVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->BlobId

=head1 DESCRIPTION

Information about a version of a file.

=head1 ATTRIBUTES


=head2 BlobId => Str

The blob ID of the object that represents the content of the file in
this version.


=head2 Commit => L<Paws::CodeCommit::Commit>




=head2 Path => Str

The name and path of the file at which this blob is indexed which
contains the data for this version of the file. This value will vary
between file versions if a file is renamed or if its path changes.


=head2 RevisionChildren => ArrayRef[Str|Undef]

An array of commit IDs that contain more recent versions of this file.
If there are no additional versions of the file, this array will be
empty.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

