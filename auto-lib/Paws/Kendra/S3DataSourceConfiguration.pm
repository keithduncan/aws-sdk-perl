# Generated by default/object.tt
package Paws::Kendra::S3DataSourceConfiguration;
  use Moose;
  has AccessControlListConfiguration => (is => 'ro', isa => 'Paws::Kendra::AccessControlListConfiguration');
  has BucketName => (is => 'ro', isa => 'Str', required => 1);
  has DocumentsMetadataConfiguration => (is => 'ro', isa => 'Paws::Kendra::DocumentsMetadataConfiguration');
  has ExclusionPatterns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has InclusionPatterns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has InclusionPrefixes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::S3DataSourceConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::S3DataSourceConfiguration object:

  $service_obj->Method(Att1 => { AccessControlListConfiguration => $value, ..., InclusionPrefixes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::S3DataSourceConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessControlListConfiguration

=head1 DESCRIPTION

Provides the configuration information to connect to an Amazon S3
bucket.

Amazon Kendra now supports an upgraded Amazon S3 connector.

You must now use the TemplateConfiguration
(https://docs.aws.amazon.com/kendra/latest/APIReference/API_TemplateConfiguration.html)
object instead of the C<S3DataSourceConfiguration> object to configure
your connector.

Connectors configured using the older console and API architecture will
continue to function as configured. However, you won't be able to edit
or update them. If you want to edit or update your connector
configuration, you must create a new connector.

We recommended migrating your connector workflow to the upgraded
version. Support for connectors configured using the older architecture
is scheduled to end by June 2024.

=head1 ATTRIBUTES


=head2 AccessControlListConfiguration => L<Paws::Kendra::AccessControlListConfiguration>

Provides the path to the S3 bucket that contains the user context
filtering files for the data source. For the format of the file, see
Access control for S3 data sources
(https://docs.aws.amazon.com/kendra/latest/dg/s3-acl.html).


=head2 B<REQUIRED> BucketName => Str

The name of the bucket that contains the documents.


=head2 DocumentsMetadataConfiguration => L<Paws::Kendra::DocumentsMetadataConfiguration>




=head2 ExclusionPatterns => ArrayRef[Str|Undef]

A list of glob patterns (patterns that can expand a wildcard pattern
into a list of path names that match the given pattern) for certain
file names and file types to exclude from your index. If a document
matches both an inclusion and exclusion prefix or pattern, the
exclusion prefix takes precendence and the document is not indexed.
Examples of glob patterns include:

=over

=item *

I</myapp/config/*>E<mdash>All files inside config directory.

=item *

I<**/*.png>E<mdash>All .png files in all directories.

=item *

I<**/*.{png, ico, md}>E<mdash>All .png, .ico or .md files in all
directories.

=item *

I</myapp/src/**/*.ts>E<mdash>All .ts files inside src directory (and
all its subdirectories).

=item *

I<**/!(*.module).ts>E<mdash>All .ts files but not .module.ts

=item *

I<*.png , *.jpg>E<mdash>All PNG and JPEG image files in a directory
(files with the extensions .png and .jpg).

=item *

I<*internal*>E<mdash>All files in a directory that contain 'internal'
in the file name, such as 'internal', 'internal_only',
'company_internal'.

=item *

I<**/*internal*>E<mdash>All internal-related files in a directory and
its subdirectories.

=back

For more examples, see Use of Exclude and Include Filters
(https://docs.aws.amazon.com/cli/latest/reference/s3/#use-of-exclude-and-include-filters)
in the Amazon Web Services CLI Command Reference.


=head2 InclusionPatterns => ArrayRef[Str|Undef]

A list of glob patterns (patterns that can expand a wildcard pattern
into a list of path names that match the given pattern) for certain
file names and file types to include in your index. If a document
matches both an inclusion and exclusion prefix or pattern, the
exclusion prefix takes precendence and the document is not indexed.
Examples of glob patterns include:

=over

=item *

I</myapp/config/*>E<mdash>All files inside config directory.

=item *

I<**/*.png>E<mdash>All .png files in all directories.

=item *

I<**/*.{png, ico, md}>E<mdash>All .png, .ico or .md files in all
directories.

=item *

I</myapp/src/**/*.ts>E<mdash>All .ts files inside src directory (and
all its subdirectories).

=item *

I<**/!(*.module).ts>E<mdash>All .ts files but not .module.ts

=item *

I<*.png , *.jpg>E<mdash>All PNG and JPEG image files in a directory
(files with the extensions .png and .jpg).

=item *

I<*internal*>E<mdash>All files in a directory that contain 'internal'
in the file name, such as 'internal', 'internal_only',
'company_internal'.

=item *

I<**/*internal*>E<mdash>All internal-related files in a directory and
its subdirectories.

=back

For more examples, see Use of Exclude and Include Filters
(https://docs.aws.amazon.com/cli/latest/reference/s3/#use-of-exclude-and-include-filters)
in the Amazon Web Services CLI Command Reference.


=head2 InclusionPrefixes => ArrayRef[Str|Undef]

A list of S3 prefixes for the documents that should be included in the
index.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

