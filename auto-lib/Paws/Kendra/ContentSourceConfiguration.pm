# Generated by default/object.tt
package Paws::Kendra::ContentSourceConfiguration;
  use Moose;
  has DataSourceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DirectPutContent => (is => 'ro', isa => 'Bool');
  has FaqIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ContentSourceConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::ContentSourceConfiguration object:

  $service_obj->Method(Att1 => { DataSourceIds => $value, ..., FaqIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::ContentSourceConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DataSourceIds

=head1 DESCRIPTION

Provides the configuration information for your content sources, such
as data sources, FAQs, and content indexed directly via
BatchPutDocument
(https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html).

=head1 ATTRIBUTES


=head2 DataSourceIds => ArrayRef[Str|Undef]

The identifier of the data sources you want to use for your Amazon
Kendra experience.


=head2 DirectPutContent => Bool

C<TRUE> to use documents you indexed directly using the
C<BatchPutDocument> API.


=head2 FaqIds => ArrayRef[Str|Undef]

The identifier of the FAQs that you want to use for your Amazon Kendra
experience.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

