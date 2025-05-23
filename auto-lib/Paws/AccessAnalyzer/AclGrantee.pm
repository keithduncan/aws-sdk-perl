# Generated by default/object.tt
package Paws::AccessAnalyzer::AclGrantee;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Uri => (is => 'ro', isa => 'Str', request_name => 'uri', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::AclGrantee

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AccessAnalyzer::AclGrantee object:

  $service_obj->Method(Att1 => { Id => $value, ..., Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AccessAnalyzer::AclGrantee object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

You specify each grantee as a type-value pair using one of these types.
You can specify only one type of grantee. For more information, see
PutBucketAcl
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAcl.html).

=head1 ATTRIBUTES


=head2 Id => Str

The value specified is the canonical user ID of an Amazon Web Services
account.


=head2 Uri => Str

Used for granting permissions to a predefined group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

