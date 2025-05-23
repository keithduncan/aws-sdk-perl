
package Paws::Route53RecoveryReadiness::DeleteCrossAccountAuthorization;
  use Moose;
  has CrossAccountAuthorization => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'crossAccountAuthorization', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCrossAccountAuthorization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/crossaccountauthorizations/{crossAccountAuthorization}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryReadiness::DeleteCrossAccountAuthorizationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::DeleteCrossAccountAuthorization - Arguments for method DeleteCrossAccountAuthorization on L<Paws::Route53RecoveryReadiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCrossAccountAuthorization on the
L<AWS Route53 Recovery Readiness|Paws::Route53RecoveryReadiness> service. Use the attributes of this class
as arguments to method DeleteCrossAccountAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCrossAccountAuthorization.

=head1 SYNOPSIS

    my $route53-recovery-readiness = Paws->service('Route53RecoveryReadiness');
    my $DeleteCrossAccountAuthorizationResponse =
      $route53 -recovery-readiness->DeleteCrossAccountAuthorization(
      CrossAccountAuthorization => 'My__string',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness/DeleteCrossAccountAuthorization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CrossAccountAuthorization => Str

The cross-account authorization.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCrossAccountAuthorization in L<Paws::Route53RecoveryReadiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

