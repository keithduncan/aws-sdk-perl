package Paws::EC2::HibernationOptionsRequest;
  use Moose;
  has Configured => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::HibernationOptionsRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::HibernationOptionsRequest object:

  $service_obj->Method(Att1 => { Configured => $value, ..., Configured => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::HibernationOptionsRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Configured

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Configured => Bool

Set to C<true> to enable your instance for hibernation.

For Spot Instances, if you set C<Configured> to C<true>, either omit
the C<InstanceInterruptionBehavior> parameter (for C<SpotMarketOptions>
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotMarketOptions.html)),
or set it to C<hibernate>. When C<Configured> is true:

=over

=item *

If you omit C<InstanceInterruptionBehavior>, it defaults to
C<hibernate>.

=item *

If you set C<InstanceInterruptionBehavior> to a value other than
C<hibernate>, you'll get an error.

=back

Default: C<false>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
