# Generated by default/object.tt
package Paws::ARCZonalShift::AutoshiftInResource;
  use Moose;
  has AppliedStatus => (is => 'ro', isa => 'Str', request_name => 'appliedStatus', traits => ['NameInRequest'], required => 1);
  has AwayFrom => (is => 'ro', isa => 'Str', request_name => 'awayFrom', traits => ['NameInRequest'], required => 1);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::AutoshiftInResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ARCZonalShift::AutoshiftInResource object:

  $service_obj->Method(Att1 => { AppliedStatus => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ARCZonalShift::AutoshiftInResource object:

  $result = $service_obj->Method(...);
  $result->Att1->AppliedStatus

=head1 DESCRIPTION

A complex structure that lists an autoshift that is currently active
for a managed resource and information about the autoshift.

For more information, see How zonal autoshift and practice runs work
(https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.how-it-works.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppliedStatus => Str

The C<appliedStatus> field specifies which application traffic shift is
in effect for a resource when there is more than one active traffic
shift. There can be more than one application traffic shift in progress
at the same time - that is, practice run zonal shifts,
customer-initiated zonal shifts, or an autoshift. The C<appliedStatus>
field for a shift that is in progress for a resource can have one of
two values: C<APPLIED> or C<NOT_APPLIED>. The zonal shift or autoshift
that is currently in effect for the resource has an C<appliedStatus>
set to C<APPLIED>.

The overall principle for precedence is that zonal shifts that you
start as a customer take precedence autoshifts, which take precedence
over practice runs. That is, customer-initiated zonal shifts E<gt>
autoshifts E<gt> practice run zonal shifts.

For more information, see How zonal autoshift and practice runs work
(https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.how-it-works.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.


=head2 B<REQUIRED> AwayFrom => Str

The Availability Zone (for example, C<use1-az1>) that traffic is
shifted away from for a resource, when Amazon Web Services starts an
autoshift. Until the autoshift ends, traffic for the resource is
instead directed to other Availability Zones in the Amazon Web Services
Region. An autoshift can end for a resource, for example, when Amazon
Web Services ends the autoshift for the Availability Zone or when you
disable zonal autoshift for the resource.


=head2 B<REQUIRED> StartTime => Str

The time (UTC) when the autoshift started.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ARCZonalShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

