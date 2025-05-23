
package Paws::Shield::DisableApplicationLayerAutomaticResponse;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableApplicationLayerAutomaticResponse');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::DisableApplicationLayerAutomaticResponseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::DisableApplicationLayerAutomaticResponse - Arguments for method DisableApplicationLayerAutomaticResponse on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableApplicationLayerAutomaticResponse on the
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method DisableApplicationLayerAutomaticResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableApplicationLayerAutomaticResponse.

=head1 SYNOPSIS

    my $shield = Paws->service('Shield');
    my $DisableApplicationLayerAutomaticResponseResponse =
      $shield->DisableApplicationLayerAutomaticResponse(
      ResourceArn => 'MyResourceArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield/DisableApplicationLayerAutomaticResponse>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN (Amazon Resource Name) of the protected resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableApplicationLayerAutomaticResponse in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

