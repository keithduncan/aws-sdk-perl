# Generated by default/object.tt
package Paws::Omics::FormatOptions;
  use Moose;
  has TsvOptions => (is => 'ro', isa => 'Paws::Omics::TsvOptions', request_name => 'tsvOptions', traits => ['NameInRequest']);
  has VcfOptions => (is => 'ro', isa => 'Paws::Omics::VcfOptions', request_name => 'vcfOptions', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::FormatOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Omics::FormatOptions object:

  $service_obj->Method(Att1 => { TsvOptions => $value, ..., VcfOptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Omics::FormatOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->TsvOptions

=head1 DESCRIPTION

Formatting options for a file.

=head1 ATTRIBUTES


=head2 TsvOptions => L<Paws::Omics::TsvOptions>

Options for a TSV file.


=head2 VcfOptions => L<Paws::Omics::VcfOptions>

Options for a VCF file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

