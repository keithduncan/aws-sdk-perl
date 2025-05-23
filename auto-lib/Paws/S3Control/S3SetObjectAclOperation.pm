# Generated by default/object.tt
package Paws::S3Control::S3SetObjectAclOperation;
  use Moose;
  has AccessControlPolicy => (is => 'ro', isa => 'Paws::S3Control::S3AccessControlPolicy');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::S3SetObjectAclOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::S3SetObjectAclOperation object:

  $service_obj->Method(Att1 => { AccessControlPolicy => $value, ..., AccessControlPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::S3SetObjectAclOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessControlPolicy

=head1 DESCRIPTION

Contains the configuration parameters for a PUT Object ACL operation.
S3 Batch Operations passes every object to the underlying
C<PutObjectAcl> API operation. For more information about the
parameters for this operation, see PutObjectAcl
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPUTacl.html).

=head1 ATTRIBUTES


=head2 AccessControlPolicy => L<Paws::S3Control::S3AccessControlPolicy>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

