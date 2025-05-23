# Generated by default/object.tt
package Paws::MedicalImaging::Overrides;
  use Moose;
  has Forced => (is => 'ro', isa => 'Bool', request_name => 'forced', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::Overrides

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MedicalImaging::Overrides object:

  $service_obj->Method(Att1 => { Forced => $value, ..., Forced => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MedicalImaging::Overrides object:

  $result = $service_obj->Method(...);
  $result->Att1->Forced

=head1 DESCRIPTION

Specifies the overrides used in image set modification calls to
C<CopyImageSet> and C<UpdateImageSetMetadata>.

=head1 ATTRIBUTES


=head2 Forced => Bool

Setting this flag will force the C<CopyImageSet> and
C<UpdateImageSetMetadata> operations, even if Patient, Study, or Series
level metadata are mismatched.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MedicalImaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

