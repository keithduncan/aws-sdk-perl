# Generated by default/object.tt
package Paws::PartnerCentralSelling::EngagementContextDetails;
  use Moose;
  has Payload => (is => 'ro', isa => 'Paws::PartnerCentralSelling::EngagementContextPayload');
  has Type => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::EngagementContextDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PartnerCentralSelling::EngagementContextDetails object:

  $service_obj->Method(Att1 => { Payload => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PartnerCentralSelling::EngagementContextDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Payload

=head1 DESCRIPTION

Provides detailed context information for an Engagement. This structure
allows for specifying the type of context and its associated payload.

=head1 ATTRIBUTES


=head2 Payload => L<Paws::PartnerCentralSelling::EngagementContextPayload>

Contains the specific details of the Engagement context. The structure
of this payload varies depending on the Type field.


=head2 B<REQUIRED> Type => Str

Specifies the type of Engagement context. Valid values are
"CustomerProject" or "Document", indicating whether the context relates
to a customer project or a document respectively.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

