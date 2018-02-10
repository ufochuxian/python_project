.class Lcom/bumptech/glide/l$a;
.super Lcom/bumptech/glide/g/b/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/bumptech/glide/g/b/n;-><init>(Landroid/view/View;)V

    .line 684
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 689
    return-void
.end method

.method public a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 694
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/g/a/c",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 699
    .local p2, "glideAnimation":Lcom/bumptech/glide/g/a/c;, "Lcom/bumptech/glide/g/a/c<-Ljava/lang/Object;>;"
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 704
    return-void
.end method
