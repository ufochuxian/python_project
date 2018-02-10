.class public abstract Lcom/c/a/a/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4


# instance fields
.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/c/a/a/a/e/a;->e:I

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/a/e/a;->f:Z

    return-void
.end method

.method private a(Lcom/c/a/a/a/e;Z)V
    .locals 1
    .param p1, "holder"    # Lcom/c/a/a/a/e;
    .param p2, "visible"    # Z

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/c/a/a/a/e/a;->e()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/c/a/a/a/e;->a(IZ)Lcom/c/a/a/a/e;

    .line 58
    return-void
.end method

.method private b(Lcom/c/a/a/a/e;Z)V
    .locals 1
    .param p1, "holder"    # Lcom/c/a/a/a/e;
    .param p2, "visible"    # Z

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/c/a/a/a/e/a;->f()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/c/a/a/a/e;->a(IZ)Lcom/c/a/a/a/e;

    .line 62
    return-void
.end method

.method private c(Lcom/c/a/a/a/e;Z)V
    .locals 1
    .param p1, "holder"    # Lcom/c/a/a/a/e;
    .param p2, "visible"    # Z

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/c/a/a/a/e/a;->g()I

    move-result v0

    .line 66
    .local v0, "loadEndViewId":I
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1, v0, p2}, Lcom/c/a/a/a/e;->a(IZ)Lcom/c/a/a/a/e;

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/c/a/a/a/e/a;->e:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "loadMoreStatus"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/c/a/a/a/e/a;->e:I

    .line 25
    return-void
.end method

.method public a(Lcom/c/a/a/a/e;)V
    .locals 3
    .param p1, "holder"    # Lcom/c/a/a/a/e;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    iget v0, p0, Lcom/c/a/a/a/e/a;->e:I

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 34
    :pswitch_0
    invoke-direct {p0, p1, v2}, Lcom/c/a/a/a/e/a;->a(Lcom/c/a/a/a/e;Z)V

    .line 35
    invoke-direct {p0, p1, v1}, Lcom/c/a/a/a/e/a;->b(Lcom/c/a/a/a/e;Z)V

    .line 36
    invoke-direct {p0, p1, v1}, Lcom/c/a/a/a/e/a;->c(Lcom/c/a/a/a/e;Z)V

    goto :goto_0

    .line 39
    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/c/a/a/a/e/a;->a(Lcom/c/a/a/a/e;Z)V

    .line 40
    invoke-direct {p0, p1, v2}, Lcom/c/a/a/a/e/a;->b(Lcom/c/a/a/a/e;Z)V

    .line 41
    invoke-direct {p0, p1, v1}, Lcom/c/a/a/a/e/a;->c(Lcom/c/a/a/a/e;Z)V

    goto :goto_0

    .line 44
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/c/a/a/a/e/a;->a(Lcom/c/a/a/a/e;Z)V

    .line 45
    invoke-direct {p0, p1, v1}, Lcom/c/a/a/a/e/a;->b(Lcom/c/a/a/a/e;Z)V

    .line 46
    invoke-direct {p0, p1, v2}, Lcom/c/a/a/a/e/a;->c(Lcom/c/a/a/a/e;Z)V

    goto :goto_0

    .line 49
    :pswitch_3
    invoke-direct {p0, p1, v1}, Lcom/c/a/a/a/e/a;->a(Lcom/c/a/a/a/e;Z)V

    .line 50
    invoke-direct {p0, p1, v1}, Lcom/c/a/a/a/e/a;->b(Lcom/c/a/a/a/e;Z)V

    .line 51
    invoke-direct {p0, p1, v1}, Lcom/c/a/a/a/e/a;->c(Lcom/c/a/a/a/e;Z)V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "loadMoreEndGone"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/c/a/a/a/e/a;->f:Z

    .line 73
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/c/a/a/a/e/a;->g()I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/c/a/a/a/e/a;->f:Z

    goto :goto_0
.end method

.method public c()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/c/a/a/a/e/a;->f:Z

    return v0
.end method

.method public abstract d()I
    .annotation build Landroid/support/annotation/w;
    .end annotation
.end method

.method protected abstract e()I
    .annotation build Landroid/support/annotation/r;
    .end annotation
.end method

.method protected abstract f()I
    .annotation build Landroid/support/annotation/r;
    .end annotation
.end method

.method protected abstract g()I
    .annotation build Landroid/support/annotation/r;
    .end annotation
.end method
