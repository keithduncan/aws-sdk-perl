
package Paws::MediaConnect::RemoveBridgeSource;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'BridgeArn', required => 1);
  has SourceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SourceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveBridgeSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/bridges/{BridgeArn}/sources/{SourceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::RemoveBridgeSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::RemoveBridgeSource - Arguments for method RemoveBridgeSource on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveBridgeSource on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method RemoveBridgeSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveBridgeSource.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $RemoveBridgeSourceResponse = $mediaconnect->RemoveBridgeSource(
      BridgeArn  => 'MyRemoveBridgeSourceRequestBridgeArnString',
      SourceName => 'MyString',

    );

    # Results:
    my $BridgeArn  = $RemoveBridgeSourceResponse->BridgeArn;
    my $SourceName = $RemoveBridgeSourceResponse->SourceName;

    # Returns a L<Paws::MediaConnect::RemoveBridgeSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/RemoveBridgeSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BridgeArn => Str

The Amazon Resource Name (ARN) of the bridge that you want to update.



=head2 B<REQUIRED> SourceName => Str

The name of the bridge source that you want to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveBridgeSource in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

