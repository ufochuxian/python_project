.class final Lcom/bumptech/glide/i/j$a;
.super Lcom/bumptech/glide/g/b/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/g/b/n",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/bumptech/glide/g/b/k;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/bumptech/glide/g/b/k;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/bumptech/glide/g/b/n;-><init>(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/i/j$a;->a(Lcom/bumptech/glide/g/b/k;)V

    .line 80
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/Object;
    .param p2, "glideAnimation"    # Lcom/bumptech/glide/g/a/c;

    .prologue
    .line 85
    return-void
.end method
