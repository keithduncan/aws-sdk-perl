# Generated by default/object.tt
package Paws::IAM::AccessDetail;
  use Moose;
  has EntityPath => (is => 'ro', isa => 'Str');
  has LastAuthenticatedTime => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has ServiceName => (is => 'ro', isa => 'Str', required => 1);
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);
  has TotalAuthenticatedEntities => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::AccessDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::AccessDetail object:

  $service_obj->Method(Att1 => { EntityPath => $value, ..., TotalAuthenticatedEntities => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::AccessDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->EntityPath

=head1 DESCRIPTION

An object that contains details about when a principal in the reported
Organizations entity last attempted to access an Amazon Web Services
service. A principal can be an IAM user, an IAM role, or the Amazon Web
Services account root user within the reported Organizations entity.

This data type is a response element in the
GetOrganizationsAccessReport operation.

=head1 ATTRIBUTES


=head2 EntityPath => Str

The path of the Organizations entity (root, organizational unit, or
account) from which an authenticated principal last attempted to access
the service. Amazon Web Services does not report unauthenticated
requests.

This field is null if no principals (IAM users, IAM roles, or root
user) in the reported Organizations entity attempted to access the
service within the tracking period
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).


=head2 LastAuthenticatedTime => Str

The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when an authenticated principal most
recently attempted to access the service. Amazon Web Services does not
report unauthenticated requests.

This field is null if no principals in the reported Organizations
entity attempted to access the service within the tracking period
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).


=head2 Region => Str

The Region where the last service access attempt occurred.

This field is null if no principals in the reported Organizations
entity attempted to access the service within the tracking period
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).


=head2 B<REQUIRED> ServiceName => Str

The name of the service in which access was attempted.


=head2 B<REQUIRED> ServiceNamespace => Str

The namespace of the service in which access was attempted.

To learn the service namespace of a service, see Actions, resources,
and condition keys for Amazon Web Services services
(https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html)
in the I<Service Authorization Reference>. Choose the name of the
service to view details for that service. In the first paragraph, find
the service prefix. For example, C<(service prefix: a4b)>. For more
information about service namespaces, see Amazon Web Services service
namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces)
in the I<Amazon Web Services General Reference>.


=head2 TotalAuthenticatedEntities => Int

The number of accounts with authenticated principals (root user, IAM
users, and IAM roles) that attempted to access the service in the
tracking period.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

