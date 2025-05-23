# Generated by default/object.tt
package Paws::AmplifyBackend::SocialProviderSettings;
  use Moose;
  has Facebook => (is => 'ro', isa => 'Paws::AmplifyBackend::BackendAuthSocialProviderConfig');
  has Google => (is => 'ro', isa => 'Paws::AmplifyBackend::BackendAuthSocialProviderConfig');
  has LoginWithAmazon => (is => 'ro', isa => 'Paws::AmplifyBackend::BackendAuthSocialProviderConfig');
  has SignInWithApple => (is => 'ro', isa => 'Paws::AmplifyBackend::BackendAuthAppleProviderConfig');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::SocialProviderSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyBackend::SocialProviderSettings object:

  $service_obj->Method(Att1 => { Facebook => $value, ..., SignInWithApple => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyBackend::SocialProviderSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Facebook

=head1 DESCRIPTION

The settings for using the social identity providers for access to your
Amplify app.

=head1 ATTRIBUTES


=head2 Facebook => L<Paws::AmplifyBackend::BackendAuthSocialProviderConfig>




=head2 Google => L<Paws::AmplifyBackend::BackendAuthSocialProviderConfig>




=head2 LoginWithAmazon => L<Paws::AmplifyBackend::BackendAuthSocialProviderConfig>




=head2 SignInWithApple => L<Paws::AmplifyBackend::BackendAuthAppleProviderConfig>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

