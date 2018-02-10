.class public final Landroid/support/v4/view/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/f$c;,
        Landroid/support/v4/view/f$a;,
        Landroid/support/v4/view/f$b;,
        Landroid/support/v4/view/f$d;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "AsyncLayoutInflater"


# instance fields
.field a:Landroid/view/LayoutInflater;

.field b:Landroid/os/Handler;

.field c:Landroid/support/v4/view/f$c;

.field private e:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/support/v4/view/f$1;

    invoke-direct {v0, p0}, Landroid/support/v4/view/f$1;-><init>(Landroid/support/v4/view/f;)V

    iput-object v0, p0, Landroid/support/v4/view/f;->e:Landroid/os/Handler$Callback;

    .line 75
    new-instance v0, Landroid/support/v4/view/f$a;

    invoke-direct {v0, p1}, Landroid/support/v4/view/f$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/view/LayoutInflater;

    .line 76
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/view/f;->e:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/v4/view/f;->b:Landroid/os/Handler;

    .line 77
    invoke-static {}, Landroid/support/v4/view/f$c;->a()Landroid/support/v4/view/f$c;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/f;->c:Landroid/support/v4/view/f$c;

    .line 78
    return-void
.end method


# virtual methods
.method public a(ILandroid/view/ViewGroup;Landroid/support/v4/view/f$d;)V
    .locals 3
    .param p1, "resid"    # I
        .annotation build Landroid/support/annotation/w;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "callback"    # Landroid/support/v4/view/f$d;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 83
    if-nez p3, :cond_0

    .line 84
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "callback argument may not be null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/f;->c:Landroid/support/v4/view/f$c;

    invoke-virtual {v1}, Landroid/support/v4/view/f$c;->b()Landroid/support/v4/view/f$b;

    move-result-object v0

    .line 87
    .local v0, "request":Landroid/support/v4/view/f$b;
    iput-object p0, v0, Landroid/support/v4/view/f$b;->a:Landroid/support/v4/view/f;

    .line 88
    iput p1, v0, Landroid/support/v4/view/f$b;->c:I

    .line 89
    iput-object p2, v0, Landroid/support/v4/view/f$b;->b:Landroid/view/ViewGroup;

    .line 90
    iput-object p3, v0, Landroid/support/v4/view/f$b;->e:Landroid/support/v4/view/f$d;

    .line 91
    iget-object v1, p0, Landroid/support/v4/view/f;->c:Landroid/support/v4/view/f$c;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/f$c;->b(Landroid/support/v4/view/f$b;)V

    .line 92
    return-void
.end method
