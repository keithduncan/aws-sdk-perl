# Generated by default/object.tt
package Paws::SageMaker::JupyterLabAppSettings;
  use Moose;
  has AppLifecycleManagement => (is => 'ro', isa => 'Paws::SageMaker::AppLifecycleManagement');
  has BuiltInLifecycleConfigArn => (is => 'ro', isa => 'Str');
  has CodeRepositories => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::CodeRepository]');
  has CustomImages => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::CustomImage]');
  has DefaultResourceSpec => (is => 'ro', isa => 'Paws::SageMaker::ResourceSpec');
  has EmrSettings => (is => 'ro', isa => 'Paws::SageMaker::EmrSettings');
  has LifecycleConfigArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::JupyterLabAppSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::JupyterLabAppSettings object:

  $service_obj->Method(Att1 => { AppLifecycleManagement => $value, ..., LifecycleConfigArns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::JupyterLabAppSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AppLifecycleManagement

=head1 DESCRIPTION

The settings for the JupyterLab application.

=head1 ATTRIBUTES


=head2 AppLifecycleManagement => L<Paws::SageMaker::AppLifecycleManagement>

Indicates whether idle shutdown is activated for JupyterLab
applications.


=head2 BuiltInLifecycleConfigArn => Str

The lifecycle configuration that runs before the default lifecycle
configuration. It can override changes made in the default lifecycle
configuration.


=head2 CodeRepositories => ArrayRef[L<Paws::SageMaker::CodeRepository>]

A list of Git repositories that SageMaker automatically displays to
users for cloning in the JupyterLab application.


=head2 CustomImages => ArrayRef[L<Paws::SageMaker::CustomImage>]

A list of custom SageMaker images that are configured to run as a
JupyterLab app.


=head2 DefaultResourceSpec => L<Paws::SageMaker::ResourceSpec>




=head2 EmrSettings => L<Paws::SageMaker::EmrSettings>

The configuration parameters that specify the IAM roles assumed by the
execution role of SageMaker (assumable roles) and the cluster instances
or job execution environments (execution roles or runtime roles) to
manage and access resources required for running Amazon EMR clusters or
Amazon EMR Serverless applications.


=head2 LifecycleConfigArns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) of the lifecycle configurations attached
to the user profile or domain. To remove a lifecycle config, you must
set C<LifecycleConfigArns> to an empty list.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

