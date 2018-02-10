.class Landroid/support/v4/media/session/g$a$b;
.super Landroid/support/v4/media/session/g$a$a;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v4/media/session/g$a;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/g$a;)V
    .locals 0

    .prologue
    .line 1070
    iput-object p1, p0, Landroid/support/v4/media/session/g$a$b;->b:Landroid/support/v4/media/session/g$a;

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/g$a$a;-><init>(Landroid/support/v4/media/session/g$a;)V

    .line 1071
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1075
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$b;->b:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/g$a;->b(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1076
    return-void
.end method
