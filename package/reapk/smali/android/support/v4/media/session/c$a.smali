.class public abstract Landroid/support/v4/media/session/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/c$a$a;,
        Landroid/support/v4/media/session/c$a$c;,
        Landroid/support/v4/media/session/c$a$b;
    }
.end annotation


# instance fields
.field a:Landroid/support/v4/media/session/c$a$a;

.field b:Z

.field c:Z

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/c$a;->c:Z

    .line 544
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 545
    new-instance v0, Landroid/support/v4/media/session/c$a$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/c$a$b;-><init>(Landroid/support/v4/media/session/c$a;)V

    invoke-static {v0}, Landroid/support/v4/media/session/d;->a(Landroid/support/v4/media/session/d$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/c$a;->d:Ljava/lang/Object;

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/c$a$c;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/c$a$c;-><init>(Landroid/support/v4/media/session/c$a;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c$a;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/media/session/c$a;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/c$a;

    .prologue
    .line 536
    iget-object v0, p0, Landroid/support/v4/media/session/c$a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 652
    new-instance v0, Landroid/support/v4/media/session/c$a$a;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/c$a$a;-><init>(Landroid/support/v4/media/session/c$a;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c$a;->a:Landroid/support/v4/media/session/c$a$a;

    .line 653
    return-void
.end method

.method static synthetic a(Landroid/support/v4/media/session/c$a;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/media/session/c$a;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 536
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/c$a;->a(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    .prologue
    .line 633
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 614
    return-void
.end method

.method public a(Landroid/support/v4/media/m;)V
    .locals 0
    .param p1, "metadata"    # Landroid/support/v4/media/m;

    .prologue
    .line 584
    return-void
.end method

.method public a(Landroid/support/v4/media/session/c$h;)V
    .locals 0
    .param p1, "info"    # Landroid/support/v4/media/session/c$h;

    .prologue
    .line 622
    return-void
.end method

.method public a(Landroid/support/v4/media/session/p;)V
    .locals 0
    .param p1, "state"    # Landroid/support/v4/media/session/p;

    .prologue
    .line 575
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 605
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 567
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/g$f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/g$f;>;"
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 641
    return-void
.end method

.method public binderDied()V
    .locals 0

    .prologue
    .line 645
    invoke-virtual {p0}, Landroid/support/v4/media/session/c$a;->a()V

    .line 646
    return-void
.end method