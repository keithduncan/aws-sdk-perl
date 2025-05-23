# Generated by default/object.tt
package Paws::ConnectCampaigns::CampaignFilters;
  use Moose;
  has InstanceIdFilter => (is => 'ro', isa => 'Paws::ConnectCampaigns::InstanceIdFilter', request_name => 'instanceIdFilter', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::CampaignFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectCampaigns::CampaignFilters object:

  $service_obj->Method(Att1 => { InstanceIdFilter => $value, ..., InstanceIdFilter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectCampaigns::CampaignFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceIdFilter

=head1 DESCRIPTION

Filter model by type

=head1 ATTRIBUTES


=head2 InstanceIdFilter => L<Paws::ConnectCampaigns::InstanceIdFilter>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectCampaigns>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

