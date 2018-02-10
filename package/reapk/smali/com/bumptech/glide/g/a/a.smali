.class public Lcom/bumptech/glide/g/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/g/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/a/d",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:I = 0x12c


# instance fields
.field private final b:Lcom/bumptech/glide/g/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/a/g",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:I

.field private d:Lcom/bumptech/glide/g/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/a/b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private e:Lcom/bumptech/glide/g/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/a/b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/bumptech/glide/g/a/a;, "Lcom/bumptech/glide/g/a/a<TT;>;"
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/bumptech/glide/g/a/a;-><init>(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 34
    .local p0, "this":Lcom/bumptech/glide/g/a/a;, "Lcom/bumptech/glide/g/a/a<TT;>;"
    new-instance v0, Lcom/bumptech/glide/g/a/g;

    new-instance v1, Lcom/bumptech/glide/g/a/a$a;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/g/a/a$a;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/g/a/g;-><init>(Lcom/bumptech/glide/g/a/f$a;)V

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/g/a/a;-><init>(Lcom/bumptech/glide/g/a/g;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultAnimationId"    # I
    .param p3, "duration"    # I

    .prologue
    .line 38
    .local p0, "this":Lcom/bumptech/glide/g/a/a;, "Lcom/bumptech/glide/g/a/a<TT;>;"
    new-instance v0, Lcom/bumptech/glide/g/a/g;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/g/a/g;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p3}, Lcom/bumptech/glide/g/a/a;-><init>(Lcom/bumptech/glide/g/a/g;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;I)V
    .locals 1
    .param p1, "defaultAnimation"    # Landroid/view/animation/Animation;
    .param p2, "duration"    # I

    .prologue
    .line 42
    .local p0, "this":Lcom/bumptech/glide/g/a/a;, "Lcom/bumptech/glide/g/a/a<TT;>;"
    new-instance v0, Lcom/bumptech/glide/g/a/g;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/g/a/g;-><init>(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/g/a/a;-><init>(Lcom/bumptech/glide/g/a/g;I)V

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/g/a/g;I)V
    .locals 0
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/a/g",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/bumptech/glide/g/a/a;, "Lcom/bumptech/glide/g/a/a<TT;>;"
    .local p1, "animationFactory":Lcom/bumptech/glide/g/a/g;, "Lcom/bumptech/glide/g/a/g<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/bumptech/glide/g/a/a;->b:Lcom/bumptech/glide/g/a/g;

    .line 47
    iput p2, p0, Lcom/bumptech/glide/g/a/a;->c:I

    .line 48
    return-void
.end method

.method private a()Lcom/bumptech/glide/g/a/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g/a/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/bumptech/glide/g/a/a;, "Lcom/bumptech/glide/g/a/a<TT;>;"
    iget-object v1, p0, Lcom/bumptech/glide/g/a/a;->d:Lcom/bumptech/glide/g/a/b;

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/bumptech/glide/g/a/a;->b:Lcom/bumptech/glide/g/a/g;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/g/a/g;->a(ZZ)Lcom/bumptech/glide/g/a/c;

    move-result-object v0

    .line 65
    .local v0, "defaultAnimation":Lcom/bumptech/glide/g/a/c;, "Lcom/bumptech/glide/g/a/c<TT;>;"
    new-instance v1, Lcom/bumptech/glide/g/a/b;

    iget v2, p0, Lcom/bumptech/glide/g/a/a;->c:I

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/g/a/b;-><init>(Lcom/bumptech/glide/g/a/c;I)V

    iput-object v1, p0, Lcom/bumptech/glide/g/a/a;->d:Lcom/bumptech/glide/g/a/b;

    .line 67
    .end local v0    # "defaultAnimation":Lcom/bumptech/glide/g/a/c;, "Lcom/bumptech/glide/g/a/c<TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/g/a/a;->d:Lcom/bumptech/glide/g/a/b;

    return-object v1
.end method

.method private b()Lcom/bumptech/glide/g/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g/a/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/g/a/a;, "Lcom/bumptech/glide/g/a/a<TT;>;"
    const/4 v2, 0x0

    .line 71
    iget-object v1, p0, Lcom/bumptech/glide/g/a/a;->e:Lcom/bumptech/glide/g/a/b;

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/bumptech/glide/g/a/a;->b:Lcom/bumptech/glide/g/a/g;

    invoke-virtual {v1, v2, v2}, Lcom/bumptech/glide/g/a/g;->a(ZZ)Lcom/bumptech/glide/g/a/c;

    move-result-object v0

    .line 74
    .local v0, "defaultAnimation":Lcom/bumptech/glide/g/a/c;, "Lcom/bumptech/glide/g/a/c<TT;>;"
    new-instance v1, Lcom/bumptech/glide/g/a/b;

    iget v2, p0, Lcom/bumptech/glide/g/a/a;->c:I

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/g/a/b;-><init>(Lcom/bumptech/glide/g/a/c;I)V

    iput-object v1, p0, Lcom/bumptech/glide/g/a/a;->e:Lcom/bumptech/glide/g/a/b;

    .line 76
    .end local v0    # "defaultAnimation":Lcom/bumptech/glide/g/a/c;, "Lcom/bumptech/glide/g/a/c<TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/g/a/a;->e:Lcom/bumptech/glide/g/a/b;

    return-object v1
.end method


# virtual methods
.method public a(ZZ)Lcom/bumptech/glide/g/a/c;
    .locals 1
    .param p1, "isFromMemoryCache"    # Z
    .param p2, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/g/a/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/bumptech/glide/g/a/a;, "Lcom/bumptech/glide/g/a/a<TT;>;"
    if-eqz p1, :cond_0

    .line 53
    invoke-static {}, Lcom/bumptech/glide/g/a/e;->b()Lcom/bumptech/glide/g/a/c;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 54
    :cond_0
    if-eqz p2, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/bumptech/glide/g/a/a;->a()Lcom/bumptech/glide/g/a/c;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/g/a/a;->b()Lcom/bumptech/glide/g/a/c;

    move-result-object v0

    goto :goto_0
.end method
