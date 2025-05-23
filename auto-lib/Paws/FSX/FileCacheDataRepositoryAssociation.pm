# Generated by default/object.tt
package Paws::FSX::FileCacheDataRepositoryAssociation;
  use Moose;
  has DataRepositoryPath => (is => 'ro', isa => 'Str', required => 1);
  has DataRepositorySubdirectories => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has FileCachePath => (is => 'ro', isa => 'Str', required => 1);
  has NFS => (is => 'ro', isa => 'Paws::FSX::FileCacheNFSConfiguration');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::FileCacheDataRepositoryAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::FileCacheDataRepositoryAssociation object:

  $service_obj->Method(Att1 => { DataRepositoryPath => $value, ..., NFS => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::FileCacheDataRepositoryAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->DataRepositoryPath

=head1 DESCRIPTION

The configuration for a data repository association (DRA) to be created
during the Amazon File Cache resource creation. The DRA links the cache
to either an Amazon S3 bucket or prefix, or a Network File System (NFS)
data repository that supports the NFSv3 protocol.

The DRA does not support automatic import or automatic export.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataRepositoryPath => Str

The path to the S3 or NFS data repository that links to the cache. You
must provide one of the following paths:

=over

=item *

The path can be an NFS data repository that links to the cache. The
path can be in one of two formats:

=over

=item *

If you are not using the C<DataRepositorySubdirectories> parameter, the
path is to an NFS Export directory (or one of its subdirectories) in
the format C<nfs://nfs-domain-name/exportpath>. You can therefore link
a single NFS Export to a single data repository association.

=item *

If you are using the C<DataRepositorySubdirectories> parameter, the
path is the domain name of the NFS file system in the format
C<nfs://filer-domain-name>, which indicates the root of the
subdirectories specified with the C<DataRepositorySubdirectories>
parameter.

=back

=item *

The path can be an S3 bucket or prefix in the format
C<s3://bucket-name/prefix/> (where C<prefix> is optional).

=back



=head2 DataRepositorySubdirectories => ArrayRef[Str|Undef]

A list of NFS Exports that will be linked with this data repository
association. The Export paths are in the format C</exportpath1>. To use
this parameter, you must configure C<DataRepositoryPath> as the domain
name of the NFS file system. The NFS file system domain name in effect
is the root of the subdirectories. Note that
C<DataRepositorySubdirectories> is not supported for S3 data
repositories.


=head2 B<REQUIRED> FileCachePath => Str

A path on the cache that points to a high-level directory (such as
C</ns1/>) or subdirectory (such as C</ns1/subdir/>) that will be mapped
1-1 with C<DataRepositoryPath>. The leading forward slash in the name
is required. Two data repository associations cannot have overlapping
cache paths. For example, if a data repository is associated with cache
path C</ns1/>, then you cannot link another data repository with cache
path C</ns1/ns2>.

This path specifies where in your cache files will be exported from.
This cache directory can be linked to only one data repository, and no
data repository other can be linked to the directory.

The cache path can only be set to root (/) on an NFS DRA when
C<DataRepositorySubdirectories> is specified. If you specify root (/)
as the cache path, you can create only one DRA on the cache.

The cache path cannot be set to root (/) for an S3 DRA.


=head2 NFS => L<Paws::FSX::FileCacheNFSConfiguration>

The configuration for a data repository association that links an
Amazon File Cache resource to an NFS data repository.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

