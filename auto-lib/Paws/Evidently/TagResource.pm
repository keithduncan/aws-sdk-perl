
package Paws::Evidently::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Evidently::TagMap', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::TagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::TagResource - Arguments for method TagResource on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $TagResourceResponse = $evidently->TagResource(
      ResourceArn => 'MyArn',
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the CloudWatch Evidently resource that you're adding tags
to.



=head2 B<REQUIRED> Tags => L<Paws::Evidently::TagMap>

The list of key-value pairs to associate with the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

