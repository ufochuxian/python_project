.class public Landroid/support/v4/media/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/a$b$b;,
        Landroid/support/v4/media/a$b$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field b:Landroid/support/v4/media/a$b$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 529
    new-instance v0, Landroid/support/v4/media/a$b$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/a$b$b;-><init>(Landroid/support/v4/media/a$b;)V

    .line 530
    invoke-static {v0}, Landroid/support/v4/media/b;->a(Landroid/support/v4/media/b$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/a$b;->a:Ljava/lang/Object;

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/a$b;->a:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 541
    return-void
.end method

.method a(Landroid/support/v4/media/a$b$a;)V
    .locals 0
    .param p1, "connectionCallbackInternal"    # Landroid/support/v4/media/a$b$a;

    .prologue
    .line 556
    iput-object p1, p0, Landroid/support/v4/media/a$b;->b:Landroid/support/v4/media/a$b$a;

    .line 557
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 547
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 553
    return-void
.end method
