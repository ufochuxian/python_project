.class public Lcom/bumptech/glide/g/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/g/a/g$b;,
        Lcom/bumptech/glide/g/a/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/a/d",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/g/a/f$a;

.field private b:Lcom/bumptech/glide/g/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/a/c",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animationId"    # I

    .prologue
    .line 22
    .local p0, "this":Lcom/bumptech/glide/g/a/g;, "Lcom/bumptech/glide/g/a/g<TR;>;"
    new-instance v0, Lcom/bumptech/glide/g/a/g$b;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/g/a/g$b;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/g/a/g;-><init>(Lcom/bumptech/glide/g/a/f$a;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 18
    .local p0, "this":Lcom/bumptech/glide/g/a/g;, "Lcom/bumptech/glide/g/a/g<TR;>;"
    new-instance v0, Lcom/bumptech/glide/g/a/g$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/g/a/g$a;-><init>(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/g/a/g;-><init>(Lcom/bumptech/glide/g/a/f$a;)V

    .line 19
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/g/a/f$a;)V
    .locals 0
    .param p1, "animationFactory"    # Lcom/bumptech/glide/g/a/f$a;

    .prologue
    .line 25
    .local p0, "this":Lcom/bumptech/glide/g/a/g;, "Lcom/bumptech/glide/g/a/g<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/g/a/g;->a:Lcom/bumptech/glide/g/a/f$a;

    .line 27
    return-void
.end method


# virtual methods
.method public a(ZZ)Lcom/bumptech/glide/g/a/c;
    .locals 2
    .param p1, "isFromMemoryCache"    # Z
    .param p2, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/g/a/c",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/bumptech/glide/g/a/g;, "Lcom/bumptech/glide/g/a/g<TR;>;"
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    .line 41
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/g/a/e;->b()Lcom/bumptech/glide/g/a/c;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/g/a/g;->b:Lcom/bumptech/glide/g/a/c;

    if-nez v0, :cond_2

    .line 45
    new-instance v0, Lcom/bumptech/glide/g/a/f;

    iget-object v1, p0, Lcom/bumptech/glide/g/a/g;->a:Lcom/bumptech/glide/g/a/f$a;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/g/a/f;-><init>(Lcom/bumptech/glide/g/a/f$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/g/a/g;->b:Lcom/bumptech/glide/g/a/c;

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/g/a/g;->b:Lcom/bumptech/glide/g/a/c;

    goto :goto_0
.end method
