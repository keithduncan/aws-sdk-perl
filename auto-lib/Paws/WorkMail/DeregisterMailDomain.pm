
package Paws::WorkMail::DeregisterMailDomain;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterMailDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DeregisterMailDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DeregisterMailDomain - Arguments for method DeregisterMailDomain on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterMailDomain on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DeregisterMailDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterMailDomain.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DeregisterMailDomainResponse = $workmail->DeregisterMailDomain(
      DomainName     => 'MyWorkMailDomainName',
      OrganizationId => 'MyOrganizationId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DeregisterMailDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The domain to deregister in WorkMail and SES.



=head2 B<REQUIRED> OrganizationId => Str

The WorkMail organization for which the domain will be deregistered.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterMailDomain in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

