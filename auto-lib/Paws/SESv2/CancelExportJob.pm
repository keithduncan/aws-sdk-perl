
package Paws::SESv2::CancelExportJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'JobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelExportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/export-jobs/{JobId}/cancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::CancelExportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::CancelExportJob - Arguments for method CancelExportJob on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelExportJob on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method CancelExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelExportJob.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $CancelExportJobResponse = $email->CancelExportJob(
      JobId => 'MyJobId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CancelExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The export job ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelExportJob in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

