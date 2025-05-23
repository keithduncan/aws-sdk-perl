# Generated by default/object.tt
package Paws::SecurityHub::AwsEc2LaunchTemplateDetails;
  use Moose;
  has DefaultVersionNumber => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str');
  has LatestVersionNumber => (is => 'ro', isa => 'Int');
  has LaunchTemplateData => (is => 'ro', isa => 'Paws::SecurityHub::AwsEc2LaunchTemplateDataDetails');
  has LaunchTemplateName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsEc2LaunchTemplateDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsEc2LaunchTemplateDetails object:

  $service_obj->Method(Att1 => { DefaultVersionNumber => $value, ..., LaunchTemplateName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsEc2LaunchTemplateDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultVersionNumber

=head1 DESCRIPTION

Specifies the properties for creating an Amazon Elastic Compute Cloud
(Amazon EC2) launch template.

=head1 ATTRIBUTES


=head2 DefaultVersionNumber => Int

The default version of the launch template.


=head2 Id => Str

An ID for the launch template.


=head2 LatestVersionNumber => Int

The latest version of the launch template.


=head2 LaunchTemplateData => L<Paws::SecurityHub::AwsEc2LaunchTemplateDataDetails>

The information to include in the launch template.


=head2 LaunchTemplateName => Str

A name for the launch template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

