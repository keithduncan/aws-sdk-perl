
package Paws::SageMaker::DeletePartnerApp;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePartnerApp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DeletePartnerAppResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeletePartnerApp - Arguments for method DeletePartnerApp on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePartnerApp on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DeletePartnerApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePartnerApp.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DeletePartnerAppResponse = $api . sagemaker->DeletePartnerApp(
      Arn         => 'MyPartnerAppArn',
      ClientToken => 'MyClientToken',     # OPTIONAL
    );

    # Results:
    my $Arn = $DeletePartnerAppResponse->Arn;

    # Returns a L<Paws::SageMaker::DeletePartnerAppResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DeletePartnerApp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the SageMaker Partner AI App to delete.



=head2 ClientToken => Str

A unique token that guarantees that the call to this API is idempotent.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePartnerApp in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

