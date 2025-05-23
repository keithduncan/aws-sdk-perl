# Generated by default/object.tt
package Paws::IoTSiteWise::Resource;
  use Moose;
  has Portal => (is => 'ro', isa => 'Paws::IoTSiteWise::PortalResource', request_name => 'portal', traits => ['NameInRequest']);
  has Project => (is => 'ro', isa => 'Paws::IoTSiteWise::ProjectResource', request_name => 'project', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::Resource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSiteWise::Resource object:

  $service_obj->Method(Att1 => { Portal => $value, ..., Project => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSiteWise::Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->Portal

=head1 DESCRIPTION

Contains an IoT SiteWise Monitor resource ID for a portal or project.

=head1 ATTRIBUTES


=head2 Portal => L<Paws::IoTSiteWise::PortalResource>

A portal resource.


=head2 Project => L<Paws::IoTSiteWise::ProjectResource>

A project resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

