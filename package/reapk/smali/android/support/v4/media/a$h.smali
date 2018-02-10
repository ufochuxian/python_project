.class Landroid/support/v4/media/a$h;
.super Landroid/support/v4/media/a$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/a$b;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Landroid/support/v4/media/a$b;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 1761
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/media/a$g;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/a$b;Landroid/os/Bundle;)V

    .line 1762
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/a$p;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "callback"    # Landroid/support/v4/media/a$p;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 1767
    if-nez p2, :cond_0

    .line 1768
    iget-object v0, p0, Landroid/support/v4/media/a$h;->a:Ljava/lang/Object;

    .line 1769
    invoke-static {p3}, Landroid/support/v4/media/a$p;->b(Landroid/support/v4/media/a$p;)Ljava/lang/Object;

    move-result-object v1

    .line 1768
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/b;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1774
    :goto_0
    return-void

    .line 1771
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/a$h;->a:Ljava/lang/Object;

    .line 1772
    invoke-static {p3}, Landroid/support/v4/media/a$p;->b(Landroid/support/v4/media/a$p;)Ljava/lang/Object;

    move-result-object v1

    .line 1771
    invoke-static {v0, p1, p2, v1}, Landroid/support/v4/media/d;->a(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/support/v4/media/a$p;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "callback"    # Landroid/support/v4/media/a$p;

    .prologue
    .line 1778
    if-nez p2, :cond_0

    .line 1779
    iget-object v0, p0, Landroid/support/v4/media/a$h;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1784
    :goto_0
    return-void

    .line 1781
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/a$h;->a:Ljava/lang/Object;

    .line 1782
    invoke-static {p2}, Landroid/support/v4/media/a$p;->b(Landroid/support/v4/media/a$p;)Ljava/lang/Object;

    move-result-object v1

    .line 1781
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
