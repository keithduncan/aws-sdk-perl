# Generated by default/object.tt
package Paws::WAFV2::RequestBodyAssociatedResourceTypeConfig;
  use Moose;
  has DefaultSizeInspectionLimit => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::RequestBodyAssociatedResourceTypeConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFV2::RequestBodyAssociatedResourceTypeConfig object:

  $service_obj->Method(Att1 => { DefaultSizeInspectionLimit => $value, ..., DefaultSizeInspectionLimit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFV2::RequestBodyAssociatedResourceTypeConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultSizeInspectionLimit

=head1 DESCRIPTION

Customizes the maximum size of the request body that your protected
CloudFront, API Gateway, Amazon Cognito, App Runner, and Verified
Access resources forward to WAF for inspection. The default size is 16
KB (16,384 bytes). You can change the setting for any of the available
resource types.

You are charged additional fees when your protected resources forward
body sizes that are larger than the default. For more information, see
WAF Pricing (http://aws.amazon.com/waf/pricing/).

Example JSON: C< { "API_GATEWAY": "KB_48", "APP_RUNNER_SERVICE":
"KB_32" }>

For Application Load Balancer and AppSync, the limit is fixed at 8 KB
(8,192 bytes).

This is used in the C<AssociationConfig> of the web ACL.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DefaultSizeInspectionLimit => Str

Specifies the maximum size of the web request body component that an
associated CloudFront, API Gateway, Amazon Cognito, App Runner, or
Verified Access resource should send to WAF for inspection. This
applies to statements in the web ACL that inspect the body or JSON
body.

Default: C<16 KB (16,384 bytes)>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

