package AssetDateModified::Tags;
use strict;

sub _hdlr_asset_date_modified {
    my ($ctx, $args) = @_;
    my $a = $ctx->stash('asset')
        or return $ctx->_no_asset_error();
    $args->{ts} = $a->modified_on;
    return $ctx->build_date($args);
}

1;
