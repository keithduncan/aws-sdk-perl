
package Paws::EFS::PutLifecycleConfiguration;
  use Moose;
  has FileSystemId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FileSystemId', required => 1);
  has LifecyclePolicies => (is => 'ro', isa => 'ArrayRef[Paws::EFS::LifecyclePolicy]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLifecycleConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::LifecycleConfigurationDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::PutLifecycleConfiguration - Arguments for method PutLifecycleConfiguration on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutLifecycleConfiguration on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method PutLifecycleConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutLifecycleConfiguration.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
# Creates a new lifecycleconfiguration object for a file system
# This operation enables lifecycle management on a file system by creating a new
# LifecycleConfiguration object. A LifecycleConfiguration object defines when
# files in an Amazon EFS file system are automatically transitioned to the
# lower-cost EFS Infrequent Access (IA) storage class. A LifecycleConfiguration
# applies to all files in a file system.
    my $LifecycleConfigurationDescription =
      $elasticfilesystem->PutLifecycleConfiguration(
      'FileSystemId'      => 'fs-01234567',
      'LifecyclePolicies' => [

        {
          'TransitionToIA' => 'AFTER_30_DAYS'
        }
      ]
      );

    # Results:
    my $LifecyclePolicies =
      $LifecycleConfigurationDescription->LifecyclePolicies;

    # Returns a L<Paws::EFS::LifecycleConfigurationDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/PutLifecycleConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileSystemId => Str

The ID of the file system for which you are creating the
C<LifecycleConfiguration> object (String).



=head2 B<REQUIRED> LifecyclePolicies => ArrayRef[L<Paws::EFS::LifecyclePolicy>]

An array of C<LifecyclePolicy> objects that define the file system's
C<LifecycleConfiguration> object. A C<LifecycleConfiguration> object
informs lifecycle management of the following:

=over

=item *

B<C<TransitionToIA> > E<ndash> When to move files in the file system
from primary storage (Standard storage class) into the Infrequent
Access (IA) storage.

=item *

B<C<TransitionToArchive> > E<ndash> When to move files in the file
system from their current storage class (either IA or Standard storage)
into the Archive storage.

File systems cannot transition into Archive storage before
transitioning into IA storage. Therefore, TransitionToArchive must
either not be set or must be later than TransitionToIA.

The Archive storage class is available only for file systems that use
the Elastic throughput mode and the General Purpose performance mode.

=item *

B<C<TransitionToPrimaryStorageClass> > E<ndash> Whether to move files
in the file system back to primary storage (Standard storage class)
after they are accessed in IA or Archive storage.

=back

When using the C<put-lifecycle-configuration> CLI command or the
C<PutLifecycleConfiguration> API action, Amazon EFS requires that each
C<LifecyclePolicy> object have only a single transition. This means
that in a request body, C<LifecyclePolicies> must be structured as an
array of C<LifecyclePolicy> objects, one object for each storage
transition. See the example requests in the following section for more
information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutLifecycleConfiguration in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

