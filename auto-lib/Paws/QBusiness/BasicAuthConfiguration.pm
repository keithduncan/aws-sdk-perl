# Generated by default/object.tt
package Paws::QBusiness::BasicAuthConfiguration;
  use Moose;
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
  has SecretArn => (is => 'ro', isa => 'Str', request_name => 'secretArn', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::BasicAuthConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QBusiness::BasicAuthConfiguration object:

  $service_obj->Method(Att1 => { RoleArn => $value, ..., SecretArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QBusiness::BasicAuthConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->RoleArn

=head1 DESCRIPTION

Information about the basic authentication credentials used to
configure a plugin.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoleArn => Str

The ARN of an IAM role used by Amazon Q Business to access the basic
authentication credentials stored in a Secrets Manager secret.


=head2 B<REQUIRED> SecretArn => Str

The ARN of the Secrets Manager secret that stores the basic
authentication credentials used for plugin configuration..



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

