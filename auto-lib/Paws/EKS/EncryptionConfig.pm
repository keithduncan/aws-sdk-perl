# Generated by default/object.tt
package Paws::EKS::EncryptionConfig;
  use Moose;
  has Provider => (is => 'ro', isa => 'Paws::EKS::Provider', request_name => 'provider', traits => ['NameInRequest']);
  has Resources => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'resources', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::EncryptionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::EncryptionConfig object:

  $service_obj->Method(Att1 => { Provider => $value, ..., Resources => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::EncryptionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Provider

=head1 DESCRIPTION

The encryption configuration for the cluster.

=head1 ATTRIBUTES


=head2 Provider => L<Paws::EKS::Provider>

Key Management Service (KMS) key. Either the ARN or the alias can be
used.


=head2 Resources => ArrayRef[Str|Undef]

Specifies the resources to be encrypted. The only supported value is
C<secrets>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

