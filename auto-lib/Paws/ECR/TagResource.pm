
package Paws::ECR::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECR::Tag]', traits => ['NameInRequest'], request_name => 'tags' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::TagResource - Arguments for method TagResource on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Elastic Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $TagResourceResponse = $api . ecr->TagResource(
      ResourceArn => 'MyArn',
      Tags        => [
        {
          Key   => 'MyTagKey',
          Value => 'MyTagValue',

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the the resource to which to add
tags. Currently, the only supported resource is an Amazon ECR
repository.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::ECR::Tag>]

The tags to add to the resource. A tag is an array of key-value pairs.
Tag keys can have a maximum character length of 128 characters, and tag
values can have a maximum length of 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

