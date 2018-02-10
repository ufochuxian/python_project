.class public Lcom/bumptech/glide/g/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/g/a/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/a/c",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/g/a/h$a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/g/a/h$a;)V
    .locals 0
    .param p1, "animator"    # Lcom/bumptech/glide/g/a/h$a;

    .prologue
    .line 23
    .local p0, "this":Lcom/bumptech/glide/g/a/h;, "Lcom/bumptech/glide/g/a/h<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/bumptech/glide/g/a/h;->a:Lcom/bumptech/glide/g/a/h$a;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c$a;)Z
    .locals 3
    .param p2, "adapter"    # Lcom/bumptech/glide/g/a/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/g/a/c$a;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/bumptech/glide/g/a/h;, "Lcom/bumptech/glide/g/a/h<TR;>;"
    .local p1, "current":Ljava/lang/Object;, "TR;"
    invoke-interface {p2}, Lcom/bumptech/glide/g/a/c$a;->a()Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/bumptech/glide/g/a/h;->a:Lcom/bumptech/glide/g/a/h$a;

    invoke-interface {p2}, Lcom/bumptech/glide/g/a/c$a;->a()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bumptech/glide/g/a/h$a;->a(Landroid/view/View;)V

    .line 42
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
