
package Paws::ComputeOptimizer::UpdateEnrollmentStatus;
  use Moose;
  has IncludeMemberAccounts => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeMemberAccounts' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnrollmentStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::UpdateEnrollmentStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::UpdateEnrollmentStatus - Arguments for method UpdateEnrollmentStatus on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnrollmentStatus on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method UpdateEnrollmentStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnrollmentStatus.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $UpdateEnrollmentStatusResponse =
      $compute -optimizer->UpdateEnrollmentStatus(
      Status                => 'Active',
      IncludeMemberAccounts => 1,          # OPTIONAL
      );

    # Results:
    my $Status       = $UpdateEnrollmentStatusResponse->Status;
    my $StatusReason = $UpdateEnrollmentStatusResponse->StatusReason;

   # Returns a L<Paws::ComputeOptimizer::UpdateEnrollmentStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/UpdateEnrollmentStatus>

=head1 ATTRIBUTES


=head2 IncludeMemberAccounts => Bool

Indicates whether to enroll member accounts of the organization if the
account is the management account of an organization.



=head2 B<REQUIRED> Status => Str

The new enrollment status of the account.

The following status options are available:

=over

=item *

C<Active> - Opts in your account to the Compute Optimizer service.
Compute Optimizer begins analyzing the configuration and utilization
metrics of your Amazon Web Services resources after you opt in. For
more information, see Metrics analyzed by Compute Optimizer
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html)
in the I<Compute Optimizer User Guide>.

=item *

C<Inactive> - Opts out your account from the Compute Optimizer service.
Your account's recommendations and related metrics data will be deleted
from Compute Optimizer after you opt out.

=back

The C<Pending> and C<Failed> options cannot be used to update the
enrollment status of an account. They are returned in the response of a
request to update the enrollment status of an account.

Valid values are: C<"Active">, C<"Inactive">, C<"Pending">, C<"Failed">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnrollmentStatus in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

