
package Paws::Personalize::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::Tag]', traits => ['NameInRequest'], request_name => 'tags' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::TagResource - Arguments for method TagResource on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $TagResourceResponse = $personalize->TagResource(
      ResourceArn => 'MyArn',
      Tags        => [
        {
          TagKey   => 'MyTagKey',      # min: 1, max: 128
          TagValue => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The resource's Amazon Resource Name (ARN).



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::Personalize::Tag>]

Tags to apply to the resource. For more information see Tagging Amazon
Personalize resources
(https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

