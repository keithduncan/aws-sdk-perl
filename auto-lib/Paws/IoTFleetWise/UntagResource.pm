
package Paws::IoTFleetWise::UntagResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::UntagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::UntagResource - Arguments for method UntagResource on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $UntagResourceResponse = $iotfleetwise->UntagResource(
      ResourceARN => 'MyAmazonResourceName',
      TagKeys     => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The ARN of the resource.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of the keys of the tags to be removed from the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

