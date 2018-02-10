.class public abstract Landroid/support/v4/media/session/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/g$a$c;,
        Landroid/support/v4/media/session/g$a$b;,
        Landroid/support/v4/media/session/g$a$a;
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Object;

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/media/session/g$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 688
    new-instance v0, Landroid/support/v4/media/session/g$a$c;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/g$a$c;-><init>(Landroid/support/v4/media/session/g$a;)V

    invoke-static {v0}, Landroid/support/v4/media/session/n;->a(Landroid/support/v4/media/session/n$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/g$a;->b:Ljava/lang/Object;

    .line 696
    :goto_0
    return-void

    .line 689
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 690
    new-instance v0, Landroid/support/v4/media/session/g$a$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/g$a$b;-><init>(Landroid/support/v4/media/session/g$a;)V

    invoke-static {v0}, Landroid/support/v4/media/session/m;->a(Landroid/support/v4/media/session/m$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/g$a;->b:Ljava/lang/Object;

    goto :goto_0

    .line 691
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 692
    new-instance v0, Landroid/support/v4/media/session/g$a$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/g$a$a;-><init>(Landroid/support/v4/media/session/g$a;)V

    invoke-static {v0}, Landroid/support/v4/media/session/k;->a(Landroid/support/v4/media/session/k$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/g$a;->b:Ljava/lang/Object;

    goto :goto_0

    .line 694
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/session/g$a;->b:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 727
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    .prologue
    .line 865
    return-void
.end method

.method public a(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 798
    return-void
.end method

.method public a(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 763
    return-void
.end method

.method public a(Landroid/support/v4/media/j;)V
    .locals 0
    .param p1, "description"    # Landroid/support/v4/media/j;

    .prologue
    .line 899
    return-void
.end method

.method public a(Landroid/support/v4/media/j;I)V
    .locals 0
    .param p1, "description"    # Landroid/support/v4/media/j;
    .param p2, "index"    # I

    .prologue
    .line 911
    return-void
.end method

.method public a(Landroid/support/v4/media/p;)V
    .locals 0
    .param p1, "rating"    # Landroid/support/v4/media/p;

    .prologue
    .line 850
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 738
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 708
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 877
    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "mediaButtonEvent"    # Landroid/content/Intent;

    .prologue
    .line 717
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 769
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 931
    return-void
.end method

.method public b(J)V
    .locals 0
    .param p1, "pos"    # J

    .prologue
    .line 842
    return-void
.end method

.method public b(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 791
    return-void
.end method

.method public b(Landroid/support/v4/media/j;)V
    .locals 0
    .param p1, "description"    # Landroid/support/v4/media/j;

    .prologue
    .line 922
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 752
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 804
    return-void
.end method

.method public c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 776
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 810
    return-void
.end method

.method public d(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 785
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 816
    return-void
.end method

.method public e(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 889
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 822
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 828
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 834
    return-void
.end method
