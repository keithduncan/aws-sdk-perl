# Generated by default/object.tt
package Paws::MarketplaceAgreement::DocumentItem;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceAgreement::DocumentItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceAgreement::DocumentItem object:

  $service_obj->Method(Att1 => { Type => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceAgreement::DocumentItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

Includes the list of references to legal resources proposed by the
proposer to the acceptor. Each C<DocumentItem> refers to an individual
reference.

=head1 ATTRIBUTES


=head2 Type => Str

Category of the document. Document types include:

=over

=item *

C<CustomEula> E<ndash> A custom EULA provided by you as seller. A URL
for a EULA stored in an accessible Amazon S3 bucket is required for
this document type.

=item *

C<CustomDsa> E<ndash> A custom Data Subscription Agreement (DSA)
provided by you as seller. A URL for a DSA stored in an accessible
Amazon S3 bucket is required for this document type.

=item *

C<StandardEula> E<ndash> The Standard Contract for AWS Marketplace
(SCMP). For more information about SCMP, see the AWS Marketplace Seller
Guide. You donE<rsquo>t provide a URL for this type because itE<rsquo>s
managed by AWS Marketplace.

=item *

C<StandardDsa> E<ndash> DSA for AWS Marketplace. For more information
about the DSA, see the AWS Data Exchange User Guide. You donE<rsquo>t
provide a URL for this type because itE<rsquo>s managed by AWS
Marketplace.

=back



=head2 Url => Str

A URL to the legal document for buyers to read. Required when C<Type>
is C<CustomEula>.


=head2 Version => Str

Version of standard contracts provided by AWS Marketplace. Required
when Type is C<StandardEula> or C<StandardDsa>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceAgreement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

