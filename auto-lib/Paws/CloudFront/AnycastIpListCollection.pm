# Generated by default/object.tt
package Paws::CloudFront::AnycastIpListCollection;
  use Moose;
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::AnycastIpListSummary]', request_name => 'AnycastIpListSummary', traits => ['NameInRequest']);
  has Marker => (is => 'ro', isa => 'Str', required => 1);
  has MaxItems => (is => 'ro', isa => 'Int', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::AnycastIpListCollection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::AnycastIpListCollection object:

  $service_obj->Method(Att1 => { IsTruncated => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::AnycastIpListCollection object:

  $result = $service_obj->Method(...);
  $result->Att1->IsTruncated

=head1 DESCRIPTION

The Anycast static IP list collection.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IsTruncated => Bool

If there are more items in the list collection than are in this
response, this value is C<true>.


=head2 Items => ArrayRef[L<Paws::CloudFront::AnycastIpListSummary>]

Items in the Anycast static IP list collection. Each item is of the
AnycastIpListSummary structure type.


=head2 B<REQUIRED> Marker => Str

Use this field when paginating results to indicate where to begin in
your list. The response includes items in the list that occur after the
marker. To get the next page of the list, set this field's value to the
value of C<NextMarker> from the current page's response.


=head2 B<REQUIRED> MaxItems => Int

The maximum number of Anycast static IP list collections that you want
returned in the response.


=head2 NextMarker => Str

Indicates the next page of the Anycast static IP list collection. To
get the next page of the list, use this value in the C<Marker> field of
your request.


=head2 B<REQUIRED> Quantity => Int

The quantity of Anycast static IP lists in the collection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

