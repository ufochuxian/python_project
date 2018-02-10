.class Landroid/support/v4/media/session/g$d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/session/g$d;->a(Landroid/support/v4/media/session/g$a;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/session/g$d;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/g$d;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/session/g$d;

    .prologue
    .line 1548
    iput-object p1, p0, Landroid/support/v4/media/session/g$d$2;->a:Landroid/support/v4/media/session/g$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 1551
    iget-object v0, p0, Landroid/support/v4/media/session/g$d$2;->a:Landroid/support/v4/media/session/g$d;

    const/16 v1, 0x13

    .line 1552
    invoke-static {p1}, Landroid/support/v4/media/p;->a(Ljava/lang/Object;)Landroid/support/v4/media/p;

    move-result-object v2

    .line 1551
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/g$d;->a(ILjava/lang/Object;)V

    .line 1553
    return-void
.end method

.method public b(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 1557
    iget-object v0, p0, Landroid/support/v4/media/session/g$d$2;->a:Landroid/support/v4/media/session/g$d;

    const/16 v1, 0x12

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/g$d;->a(ILjava/lang/Object;)V

    .line 1558
    return-void
.end method
