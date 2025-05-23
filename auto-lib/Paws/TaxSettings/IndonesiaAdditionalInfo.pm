# Generated by default/object.tt
package Paws::TaxSettings::IndonesiaAdditionalInfo;
  use Moose;
  has DecisionNumber => (is => 'ro', isa => 'Str', request_name => 'decisionNumber', traits => ['NameInRequest']);
  has PpnExceptionDesignationCode => (is => 'ro', isa => 'Str', request_name => 'ppnExceptionDesignationCode', traits => ['NameInRequest']);
  has TaxRegistrationNumberType => (is => 'ro', isa => 'Str', request_name => 'taxRegistrationNumberType', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::IndonesiaAdditionalInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TaxSettings::IndonesiaAdditionalInfo object:

  $service_obj->Method(Att1 => { DecisionNumber => $value, ..., TaxRegistrationNumberType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TaxSettings::IndonesiaAdditionalInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->DecisionNumber

=head1 DESCRIPTION

Additional tax information associated with your TRN in Indonesia.

=head1 ATTRIBUTES


=head2 DecisionNumber => Str

VAT-exempt customers have a Directorate General of Taxation (DGT)
exemption letter or certificate (Surat Keterangan Bebas) decision
number. Non-collected VAT have a DGT letter or certificate (Surat
Keterangan Tidak Dipungut).


=head2 PpnExceptionDesignationCode => Str

Exception code if you are designated by Directorate General of Taxation
(DGT) as a VAT collector, non-collected VAT, or VAT-exempt customer.


=head2 TaxRegistrationNumberType => Str

The tax registration number type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TaxSettings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

