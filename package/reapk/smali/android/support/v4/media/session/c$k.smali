.class Landroid/support/v4/media/session/c$k;
.super Landroid/support/v4/media/session/c$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "controlsObj"    # Ljava/lang/Object;

    .prologue
    .line 2152
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/c$j;-><init>(Ljava/lang/Object;)V

    .line 2153
    return-void
.end method


# virtual methods
.method public b(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2157
    iget-object v0, p0, Landroid/support/v4/media/session/c$k;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/e$a;->a(Ljava/lang/Object;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2159
    return-void
.end method
