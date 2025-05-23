# Generated by default/object.tt
package Paws::Connect::ContactDataRequest;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::Connect::Attributes');
  has Campaign => (is => 'ro', isa => 'Paws::Connect::Campaign');
  has CustomerEndpoint => (is => 'ro', isa => 'Paws::Connect::Endpoint');
  has QueueId => (is => 'ro', isa => 'Str');
  has RequestIdentifier => (is => 'ro', isa => 'Str');
  has SystemEndpoint => (is => 'ro', isa => 'Paws::Connect::Endpoint');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ContactDataRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::ContactDataRequest object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., SystemEndpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::ContactDataRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

Request object with information to create a contact.

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::Connect::Attributes>

List of attributes to be stored in a contact.


=head2 Campaign => L<Paws::Connect::Campaign>

Structure to store information associated with a campaign.


=head2 CustomerEndpoint => L<Paws::Connect::Endpoint>

Endpoint of the customer for which contact will be initiated.


=head2 QueueId => Str

The identifier of the queue associated with the Amazon Connect instance
in which contacts that are created will be queued.


=head2 RequestIdentifier => Str

Identifier to uniquely identify individual requests in the batch.


=head2 SystemEndpoint => L<Paws::Connect::Endpoint>

Endpoint associated with the Amazon Connect instance from which
outbound contact will be initiated for the campaign.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

