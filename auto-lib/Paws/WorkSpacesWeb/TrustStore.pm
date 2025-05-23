# Generated by default/object.tt
package Paws::WorkSpacesWeb::TrustStore;
  use Moose;
  has AssociatedPortalArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'associatedPortalArns', traits => ['NameInRequest']);
  has TrustStoreArn => (is => 'ro', isa => 'Str', request_name => 'trustStoreArn', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::TrustStore

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpacesWeb::TrustStore object:

  $service_obj->Method(Att1 => { AssociatedPortalArns => $value, ..., TrustStoreArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpacesWeb::TrustStore object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatedPortalArns

=head1 DESCRIPTION

A trust store that can be associated with a web portal. A trust store
contains certificate authority (CA) certificates. Once associated with
a web portal, the browser in a streaming session will recognize
certificates that have been issued using any of the CAs in the trust
store. If your organization has internal websites that use certificates
issued by private CAs, you should add the private CA certificate to the
trust store.

=head1 ATTRIBUTES


=head2 AssociatedPortalArns => ArrayRef[Str|Undef]

A list of web portal ARNs that this trust store is associated with.


=head2 B<REQUIRED> TrustStoreArn => Str

The ARN of the trust store.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

