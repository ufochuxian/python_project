.class Landroid/support/v4/media/session/c$j;
.super Landroid/support/v4/media/session/c$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# instance fields
.field protected final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "controlsObj"    # Ljava/lang/Object;

    .prologue
    .line 1996
    invoke-direct {p0}, Landroid/support/v4/media/session/c$i;-><init>()V

    .line 1997
    iput-object p1, p0, Landroid/support/v4/media/session/c$j;->a:Ljava/lang/Object;

    .line 1998
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 2002
    const-string v0, "android.support.v4.media.session.action.PREPARE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/c$j;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2003
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1, "repeatMode"    # I

    .prologue
    .line 2077
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2078
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2079
    const-string v1, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/c$j;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2080
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 2115
    iget-object v0, p0, Landroid/support/v4/media/session/c$j;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/d$d;->b(Ljava/lang/Object;J)V

    .line 2116
    return-void
.end method

.method public a(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2023
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2024
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2025
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2026
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/c$j;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2027
    return-void
.end method

.method public a(Landroid/support/v4/media/p;)V
    .locals 2
    .param p1, "rating"    # Landroid/support/v4/media/p;

    .prologue
    .line 2071
    iget-object v1, p0, Landroid/support/v4/media/session/c$j;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2072
    invoke-virtual {p1}, Landroid/support/v4/media/p;->g()Ljava/lang/Object;

    move-result-object v0

    .line 2071
    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/media/session/d$d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2073
    return-void

    .line 2072
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/media/session/p$c;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "customAction"    # Landroid/support/v4/media/session/p$c;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 2120
    iget-object v0, p0, Landroid/support/v4/media/session/c$j;->a:Ljava/lang/Object;

    .line 2121
    invoke-virtual {p1}, Landroid/support/v4/media/session/p$c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2120
    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/d$d;->c(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2122
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2007
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2008
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2010
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/c$j;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2011
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2084
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2085
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE_ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2086
    const-string v1, "android.support.v4.media.session.action.SET_SHUFFLE_MODE_ENABLED"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/c$j;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2087
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Landroid/support/v4/media/session/c$j;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/d$d;->a(Ljava/lang/Object;)V

    .line 2032
    return-void
.end method

.method public b(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 2046
    iget-object v0, p0, Landroid/support/v4/media/session/c$j;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/d$d;->a(Ljava/lang/Object;J)V

    .line 2047
    return-void
.end method

.method public b(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2103
    if-eqz p1, :cond_0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2104
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must specify a non-empty Uri for playFromUri."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2107
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2108
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2109
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2110
    const-string v1, "android.support.v4.media.session.action.PLAY_FROM_URI"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/c$j;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2111
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2015
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2016
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2018
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/c$j;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2019
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 2036
    iget-object v0, p0, Landroid/support/v4/media/session/c$j;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/d$d;->b(Ljava/lang/Object;)V

    .line 2037
    return-void
.end method

.method public c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2091
    iget-object v0, p0, Landroid/support/v4/media/session/c$j;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/d$d;->a(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2093
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 2041
    iget-object v0, p0, Landroid/support/v4/media/session/c$j;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/d$d;->c(Ljava/lang/Object;)V

    .line 2042
    return-void
.end method

.method public d(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2097
    iget-object v0, p0, Landroid/support/v4/media/session/c$j;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/d$d;->b(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2099
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 2051
    iget-object v0, p0, Landroid/support/v4/media/session/c$j;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/d$d;->d(Ljava/lang/Object;)V

    .line 2052
    return-void
.end method

.method public e(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 2126
    iget-object v0, p0, Landroid/support/v4/media/session/c$j;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/d$d;->c(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2128
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 2061
    iget-object v0, p0, Landroid/support/v4/media/session/c$j;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/d$d;->f(Ljava/lang/Object;)V

    .line 2062
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 2056
    iget-object v0, p0, Landroid/support/v4/media/session/c$j;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/d$d;->e(Ljava/lang/Object;)V

    .line 2057
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 2066
    iget-object v0, p0, Landroid/support/v4/media/session/c$j;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/d$d;->g(Ljava/lang/Object;)V

    .line 2067
    return-void
.end method