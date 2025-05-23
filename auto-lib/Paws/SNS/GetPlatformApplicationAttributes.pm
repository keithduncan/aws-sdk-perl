
package Paws::SNS::GetPlatformApplicationAttributes;
  use Moose;
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPlatformApplicationAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::GetPlatformApplicationAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetPlatformApplicationAttributesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetPlatformApplicationAttributes - Arguments for method GetPlatformApplicationAttributes on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPlatformApplicationAttributes on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method GetPlatformApplicationAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPlatformApplicationAttributes.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $GetPlatformApplicationAttributesResponse =
      $sns->GetPlatformApplicationAttributes(
      PlatformApplicationArn => 'MyString',

      );

    # Results:
    my $Attributes = $GetPlatformApplicationAttributesResponse->Attributes;

    # Returns a L<Paws::SNS::GetPlatformApplicationAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/GetPlatformApplicationAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PlatformApplicationArn => Str

C<PlatformApplicationArn> for GetPlatformApplicationAttributesInput.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPlatformApplicationAttributes in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

