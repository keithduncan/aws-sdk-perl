
package Paws::SSMQuickSetup::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::SSMQuickSetup::TagsMap', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{ResourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::TagResource - Arguments for method TagResource on L<Paws::SSMQuickSetup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Systems Manager QuickSetup|Paws::SSMQuickSetup> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $ssm-quicksetup = Paws->service('SSMQuickSetup');
    $ssm -quicksetup->TagResource(
      ResourceArn => 'MyString',
      Tags        => {
        'MyTagsMapKeyString' =>
          'MyTagsMapValueString',    # key: min: 1, max: 128, value: max: 256
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource to tag.



=head2 B<REQUIRED> Tags => L<Paws::SSMQuickSetup::TagsMap>

Key-value pairs of metadata to assign to the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::SSMQuickSetup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

