package Paws::EC2::FleetLaunchTemplateSpecificationRequest;
  use Moose;
  has LaunchTemplateId => (is => 'ro', isa => 'Str');
  has LaunchTemplateName => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FleetLaunchTemplateSpecificationRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FleetLaunchTemplateSpecificationRequest object:

  $service_obj->Method(Att1 => { LaunchTemplateId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FleetLaunchTemplateSpecificationRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->LaunchTemplateId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 LaunchTemplateId => Str

The ID of the launch template.

You must specify the C<LaunchTemplateId> or the C<LaunchTemplateName>,
but not both.


=head2 LaunchTemplateName => Str

The name of the launch template.

You must specify the C<LaunchTemplateName> or the C<LaunchTemplateId>,
but not both.


=head2 Version => Str

The launch template version number, C<$Latest>, or C<$Default>. You
must specify a value, otherwise the request fails.

If the value is C<$Latest>, Amazon EC2 uses the latest version of the
launch template.

If the value is C<$Default>, Amazon EC2 uses the default version of the
launch template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
