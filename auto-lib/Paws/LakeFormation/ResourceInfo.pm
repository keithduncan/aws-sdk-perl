# Generated by default/object.tt
package Paws::LakeFormation::ResourceInfo;
  use Moose;
  has HybridAccessEnabled => (is => 'ro', isa => 'Bool');
  has LastModified => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has WithFederation => (is => 'ro', isa => 'Bool');
  has WithPrivilegedAccess => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ResourceInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LakeFormation::ResourceInfo object:

  $service_obj->Method(Att1 => { HybridAccessEnabled => $value, ..., WithPrivilegedAccess => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LakeFormation::ResourceInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->HybridAccessEnabled

=head1 DESCRIPTION

A structure containing information about an Lake Formation resource.

=head1 ATTRIBUTES


=head2 HybridAccessEnabled => Bool

Indicates whether the data access of tables pointing to the location
can be managed by both Lake Formation permissions as well as Amazon S3
bucket policies.


=head2 LastModified => Str

The date and time the resource was last modified.


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the resource.


=head2 RoleArn => Str

The IAM role that registered a resource.


=head2 WithFederation => Bool

Whether or not the resource is a federated resource.


=head2 WithPrivilegedAccess => Bool

Grants the calling principal the permissions to perform all supported
Lake Formation operations on the registered data location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

