# Generated by default/object.tt
package Paws::Kendra::ServiceNowConfiguration;
  use Moose;
  has AuthenticationType => (is => 'ro', isa => 'Str');
  has HostUrl => (is => 'ro', isa => 'Str', required => 1);
  has KnowledgeArticleConfiguration => (is => 'ro', isa => 'Paws::Kendra::ServiceNowKnowledgeArticleConfiguration');
  has SecretArn => (is => 'ro', isa => 'Str', required => 1);
  has ServiceCatalogConfiguration => (is => 'ro', isa => 'Paws::Kendra::ServiceNowServiceCatalogConfiguration');
  has ServiceNowBuildVersion => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ServiceNowConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::ServiceNowConfiguration object:

  $service_obj->Method(Att1 => { AuthenticationType => $value, ..., ServiceNowBuildVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::ServiceNowConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthenticationType

=head1 DESCRIPTION

Provides the configuration information to connect to ServiceNow as your
data source.

=head1 ATTRIBUTES


=head2 AuthenticationType => Str

The type of authentication used to connect to the ServiceNow instance.
If you choose C<HTTP_BASIC>, Amazon Kendra is authenticated using the
user name and password provided in the Secrets Manager secret in the
C<SecretArn> field. If you choose C<OAUTH2>, Amazon Kendra is
authenticated using the credentials of client ID, client secret, user
name and password.

When you use C<OAUTH2> authentication, you must generate a token and a
client secret using the ServiceNow console. For more information, see
Using a ServiceNow data source
(https://docs.aws.amazon.com/kendra/latest/dg/data-source-servicenow.html).


=head2 B<REQUIRED> HostUrl => Str

The ServiceNow instance that the data source connects to. The host
endpoint should look like the following: I<{instance}.service-now.com.>


=head2 KnowledgeArticleConfiguration => L<Paws::Kendra::ServiceNowKnowledgeArticleConfiguration>

Configuration information for crawling knowledge articles in the
ServiceNow site.


=head2 B<REQUIRED> SecretArn => Str

The Amazon Resource Name (ARN) of the Secrets Manager secret that
contains the user name and password required to connect to the
ServiceNow instance. You can also provide OAuth authentication
credentials of user name, password, client ID, and client secret. For
more information, see Using a ServiceNow data source
(https://docs.aws.amazon.com/kendra/latest/dg/data-source-servicenow.html).


=head2 ServiceCatalogConfiguration => L<Paws::Kendra::ServiceNowServiceCatalogConfiguration>

Configuration information for crawling service catalogs in the
ServiceNow site.


=head2 B<REQUIRED> ServiceNowBuildVersion => Str

The identifier of the release that the ServiceNow host is running. If
the host is not running the C<LONDON> release, use C<OTHERS>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

