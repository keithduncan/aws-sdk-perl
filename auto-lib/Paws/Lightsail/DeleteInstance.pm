
package Paws::Lightsail::DeleteInstance;
  use Moose;
  has ForceDeleteAddOns => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'forceDeleteAddOns' );
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::DeleteInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DeleteInstance - Arguments for method DeleteInstance on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteInstance on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method DeleteInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteInstance.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $DeleteInstanceResult = $lightsail->DeleteInstance(
      InstanceName      => 'MyResourceName',
      ForceDeleteAddOns => 1,                  # OPTIONAL
    );

    # Results:
    my $Operations = $DeleteInstanceResult->Operations;

    # Returns a L<Paws::Lightsail::DeleteInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/DeleteInstance>

=head1 ATTRIBUTES


=head2 ForceDeleteAddOns => Bool

A Boolean value to indicate whether to delete all add-ons for the
instance.



=head2 B<REQUIRED> InstanceName => Str

The name of the instance to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteInstance in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

