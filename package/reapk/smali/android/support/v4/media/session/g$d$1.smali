.class Landroid/support/v4/media/session/g$d$1;
.super Landroid/support/v4/media/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/g$d;
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
    .line 1491
    iput-object p1, p0, Landroid/support/v4/media/session/g$d$1;->a:Landroid/support/v4/media/session/g$d;

    invoke-direct {p0}, Landroid/support/v4/media/x$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/media/x;)V
    .locals 6
    .param p1, "volumeProvider"    # Landroid/support/v4/media/x;

    .prologue
    .line 1494
    iget-object v1, p0, Landroid/support/v4/media/session/g$d$1;->a:Landroid/support/v4/media/session/g$d;

    iget-object v1, v1, Landroid/support/v4/media/session/g$d;->t:Landroid/support/v4/media/x;

    if-eq v1, p1, :cond_0

    .line 1501
    :goto_0
    return-void

    .line 1497
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/o;

    iget-object v1, p0, Landroid/support/v4/media/session/g$d$1;->a:Landroid/support/v4/media/session/g$d;

    iget v1, v1, Landroid/support/v4/media/session/g$d;->r:I

    iget-object v2, p0, Landroid/support/v4/media/session/g$d$1;->a:Landroid/support/v4/media/session/g$d;

    iget v2, v2, Landroid/support/v4/media/session/g$d;->s:I

    .line 1498
    invoke-virtual {p1}, Landroid/support/v4/media/x;->b()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/media/x;->c()I

    move-result v4

    .line 1499
    invoke-virtual {p1}, Landroid/support/v4/media/x;->a()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/o;-><init>(IIIII)V

    .line 1500
    .local v0, "info":Landroid/support/v4/media/session/o;
    iget-object v1, p0, Landroid/support/v4/media/session/g$d$1;->a:Landroid/support/v4/media/session/g$d;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/g$d;->a(Landroid/support/v4/media/session/o;)V

    goto :goto_0
.end method
