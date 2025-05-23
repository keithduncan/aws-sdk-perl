# Generated by default/object.tt
package Paws::SageMaker::Project;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has ProjectArn => (is => 'ro', isa => 'Str');
  has ProjectDescription => (is => 'ro', isa => 'Str');
  has ProjectId => (is => 'ro', isa => 'Str');
  has ProjectName => (is => 'ro', isa => 'Str');
  has ProjectStatus => (is => 'ro', isa => 'Str');
  has ServiceCatalogProvisionedProductDetails => (is => 'ro', isa => 'Paws::SageMaker::ServiceCatalogProvisionedProductDetails');
  has ServiceCatalogProvisioningDetails => (is => 'ro', isa => 'Paws::SageMaker::ServiceCatalogProvisioningDetails');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::Project

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::Project object:

  $service_obj->Method(Att1 => { CreatedBy => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::Project object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedBy

=head1 DESCRIPTION

The properties of a project as returned by the Search API.

=head1 ATTRIBUTES


=head2 CreatedBy => L<Paws::SageMaker::UserContext>

Who created the project.


=head2 CreationTime => Str

A timestamp specifying when the project was created.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>




=head2 LastModifiedTime => Str

A timestamp container for when the project was last modified.


=head2 ProjectArn => Str

The Amazon Resource Name (ARN) of the project.


=head2 ProjectDescription => Str

The description of the project.


=head2 ProjectId => Str

The ID of the project.


=head2 ProjectName => Str

The name of the project.


=head2 ProjectStatus => Str

The status of the project.


=head2 ServiceCatalogProvisionedProductDetails => L<Paws::SageMaker::ServiceCatalogProvisionedProductDetails>




=head2 ServiceCatalogProvisioningDetails => L<Paws::SageMaker::ServiceCatalogProvisioningDetails>




=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. You can use tags to categorize your Amazon
Web Services resources in different ways, for example, by purpose,
owner, or environment. For more information, see Tagging Amazon Web
Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

