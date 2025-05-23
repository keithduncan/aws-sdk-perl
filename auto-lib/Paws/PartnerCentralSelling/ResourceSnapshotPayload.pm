# Generated by default/object.tt
package Paws::PartnerCentralSelling::ResourceSnapshotPayload;
  use Moose;
  has OpportunitySummary => (is => 'ro', isa => 'Paws::PartnerCentralSelling::OpportunitySummaryView');

1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ResourceSnapshotPayload

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PartnerCentralSelling::ResourceSnapshotPayload object:

  $service_obj->Method(Att1 => { OpportunitySummary => $value, ..., OpportunitySummary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PartnerCentralSelling::ResourceSnapshotPayload object:

  $result = $service_obj->Method(...);
  $result->Att1->OpportunitySummary

=head1 DESCRIPTION

Represents the payload of a resource snapshot. This structure is
designed to accommodate different types of resource snapshots,
currently supporting opportunity summaries.

=head1 ATTRIBUTES


=head2 OpportunitySummary => L<Paws::PartnerCentralSelling::OpportunitySummaryView>

An object that contains an C<opportunity>'s subset of fields.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

