
package Paws::AppConfig::Configuration;
  use Moose;
  has ConfigurationVersion => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Configuration-Version');
  has Content => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Content');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::Configuration

=head1 ATTRIBUTES


=head2 ConfigurationVersion => Str

The configuration version.


=head2 Content => Str

The content of the configuration or the configuration data.

The C<Content> attribute only contains data if the system finds new or
updated configuration data. If there is no new or updated data and
C<ClientConfigurationVersion> matches the version of the current
configuration, AppConfig returns a C<204 No Content> HTTP response code
and the C<Content> value will be empty.


=head2 ContentType => Str

A standard MIME type describing the format of the configuration
content. For more information, see Content-Type
(http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17).


=head2 _request_id => Str


=cut

