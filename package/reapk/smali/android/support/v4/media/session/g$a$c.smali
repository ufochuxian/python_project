.class Landroid/support/v4/media/session/g$a$c;
.super Landroid/support/v4/media/session/g$a$b;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic c:Landroid/support/v4/media/session/g$a;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/g$a;)V
    .locals 0

    .prologue
    .line 1081
    iput-object p1, p0, Landroid/support/v4/media/session/g$a$c;->c:Landroid/support/v4/media/session/g$a;

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/g$a$b;-><init>(Landroid/support/v4/media/session/g$a;)V

    .line 1082
    return-void
.end method


# virtual methods
.method public b(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1101
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$c;->c:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/g$a;->a(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1102
    return-void
.end method

.method public d(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1091
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$c;->c:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/g$a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1092
    return-void
.end method

.method public e(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1096
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$c;->c:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/g$a;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1097
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$c;->c:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0}, Landroid/support/v4/media/session/g$a;->a()V

    .line 1087
    return-void
.end method
