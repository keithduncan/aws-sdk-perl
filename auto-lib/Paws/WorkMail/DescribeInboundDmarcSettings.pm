
package Paws::WorkMail::DescribeInboundDmarcSettings;
  use Moose;
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInboundDmarcSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DescribeInboundDmarcSettingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeInboundDmarcSettings - Arguments for method DescribeInboundDmarcSettings on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInboundDmarcSettings on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DescribeInboundDmarcSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInboundDmarcSettings.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DescribeInboundDmarcSettingsResponse =
      $workmail->DescribeInboundDmarcSettings(
      OrganizationId => 'MyOrganizationId',

      );

    # Results:
    my $Enforced = $DescribeInboundDmarcSettingsResponse->Enforced;

    # Returns a L<Paws::WorkMail::DescribeInboundDmarcSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DescribeInboundDmarcSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrganizationId => Str

Lists the ID of the given organization.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInboundDmarcSettings in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

