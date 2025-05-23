
package Paws::RUM::GetResourcePolicy;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourcePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appmonitor/{Name}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RUM::GetResourcePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::GetResourcePolicy - Arguments for method GetResourcePolicy on L<Paws::RUM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourcePolicy on the
L<CloudWatch RUM|Paws::RUM> service. Use the attributes of this class
as arguments to method GetResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourcePolicy.

=head1 SYNOPSIS

    my $rum = Paws->service('RUM');
    my $GetResourcePolicyResponse = $rum->GetResourcePolicy(
      Name => 'MyAppMonitorName',

    );

    # Results:
    my $PolicyDocument   = $GetResourcePolicyResponse->PolicyDocument;
    my $PolicyRevisionId = $GetResourcePolicyResponse->PolicyRevisionId;

    # Returns a L<Paws::RUM::GetResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rum/GetResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the app monitor that is associated with the resource-based
policy that you want to view.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourcePolicy in L<Paws::RUM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

