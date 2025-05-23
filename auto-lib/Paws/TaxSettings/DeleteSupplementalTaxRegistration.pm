
package Paws::TaxSettings::DeleteSupplementalTaxRegistration;
  use Moose;
  has AuthorityId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorityId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSupplementalTaxRegistration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteSupplementalTaxRegistration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TaxSettings::DeleteSupplementalTaxRegistrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::DeleteSupplementalTaxRegistration - Arguments for method DeleteSupplementalTaxRegistration on L<Paws::TaxSettings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSupplementalTaxRegistration on the
L<Tax Settings|Paws::TaxSettings> service. Use the attributes of this class
as arguments to method DeleteSupplementalTaxRegistration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSupplementalTaxRegistration.

=head1 SYNOPSIS

    my $tax = Paws->service('TaxSettings');
    my $DeleteSupplementalTaxRegistrationResponse =
      $tax->DeleteSupplementalTaxRegistration(
      AuthorityId => 'MyGenericString',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tax/DeleteSupplementalTaxRegistration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorityId => Str

The unique authority Id for the supplemental TRN information that needs
to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSupplementalTaxRegistration in L<Paws::TaxSettings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

