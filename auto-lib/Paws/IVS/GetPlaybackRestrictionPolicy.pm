
package Paws::IVS::GetPlaybackRestrictionPolicy;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPlaybackRestrictionPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetPlaybackRestrictionPolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::GetPlaybackRestrictionPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::GetPlaybackRestrictionPolicy - Arguments for method GetPlaybackRestrictionPolicy on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPlaybackRestrictionPolicy on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method GetPlaybackRestrictionPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPlaybackRestrictionPolicy.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $GetPlaybackRestrictionPolicyResponse =
      $ivs->GetPlaybackRestrictionPolicy(
      Arn => 'MyPlaybackRestrictionPolicyArn',

      );

    # Results:
    my $PlaybackRestrictionPolicy =
      $GetPlaybackRestrictionPolicyResponse->PlaybackRestrictionPolicy;

    # Returns a L<Paws::IVS::GetPlaybackRestrictionPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/GetPlaybackRestrictionPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

ARN of the playback restriction policy to be returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPlaybackRestrictionPolicy in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

