# Generated by default/object.tt
package Paws::AutoScaling::LaunchTemplateSpecification;
  use Moose;
  has LaunchTemplateId => (is => 'ro', isa => 'Str');
  has LaunchTemplateName => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::LaunchTemplateSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::LaunchTemplateSpecification object:

  $service_obj->Method(Att1 => { LaunchTemplateId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::LaunchTemplateSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->LaunchTemplateId

=head1 DESCRIPTION

Describes the launch template and the version of the launch template
that Amazon EC2 Auto Scaling uses to launch Amazon EC2 instances. For
more information about launch templates, see Launch templates
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-templates.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

=head1 ATTRIBUTES


=head2 LaunchTemplateId => Str

The ID of the launch template. To get the template ID, use the Amazon
EC2 DescribeLaunchTemplates
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLaunchTemplates.html)
API operation. New launch templates can be created using the Amazon EC2
CreateLaunchTemplate
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html)
API.

Conditional: You must specify either a C<LaunchTemplateId> or a
C<LaunchTemplateName>.


=head2 LaunchTemplateName => Str

The name of the launch template. To get the template name, use the
Amazon EC2 DescribeLaunchTemplates
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLaunchTemplates.html)
API operation. New launch templates can be created using the Amazon EC2
CreateLaunchTemplate
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html)
API.

Conditional: You must specify either a C<LaunchTemplateId> or a
C<LaunchTemplateName>.


=head2 Version => Str

The version number, C<$Latest>, or C<$Default>. To get the version
number, use the Amazon EC2 DescribeLaunchTemplateVersions
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLaunchTemplateVersions.html)
API operation. New launch template versions can be created using the
Amazon EC2 CreateLaunchTemplateVersion
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplateVersion.html)
API. If the value is C<$Latest>, Amazon EC2 Auto Scaling selects the
latest version of the launch template when launching instances. If the
value is C<$Default>, Amazon EC2 Auto Scaling selects the default
version of the launch template when launching instances. The default
value is C<$Default>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

