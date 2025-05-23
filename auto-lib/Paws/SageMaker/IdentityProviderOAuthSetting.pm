# Generated by default/object.tt
package Paws::SageMaker::IdentityProviderOAuthSetting;
  use Moose;
  has DataSourceName => (is => 'ro', isa => 'Str');
  has SecretArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::IdentityProviderOAuthSetting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::IdentityProviderOAuthSetting object:

  $service_obj->Method(Att1 => { DataSourceName => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::IdentityProviderOAuthSetting object:

  $result = $service_obj->Method(...);
  $result->Att1->DataSourceName

=head1 DESCRIPTION

The Amazon SageMaker Canvas application setting where you configure
OAuth for connecting to an external data source, such as Snowflake.

=head1 ATTRIBUTES


=head2 DataSourceName => Str

The name of the data source that you're connecting to. Canvas currently
supports OAuth for Snowflake and Salesforce Data Cloud.


=head2 SecretArn => Str

The ARN of an Amazon Web Services Secrets Manager secret that stores
the credentials from your identity provider, such as the client ID and
secret, authorization URL, and token URL.


=head2 Status => Str

Describes whether OAuth for a data source is enabled or disabled in the
Canvas application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

