# Generated by default/object.tt
package Paws::SageMaker::SpaceSettingsSummary;
  use Moose;
  has AppType => (is => 'ro', isa => 'Str');
  has SpaceStorageSettings => (is => 'ro', isa => 'Paws::SageMaker::SpaceStorageSettings');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SpaceSettingsSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::SpaceSettingsSummary object:

  $service_obj->Method(Att1 => { AppType => $value, ..., SpaceStorageSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::SpaceSettingsSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AppType

=head1 DESCRIPTION

Specifies summary information about the space settings.

=head1 ATTRIBUTES


=head2 AppType => Str

The type of app created within the space.


=head2 SpaceStorageSettings => L<Paws::SageMaker::SpaceStorageSettings>

The storage settings for a space.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

