.class public Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/c;
.super Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/c;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/c<TT;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 5
    .param p2, "animation"    # Landroid/view/animation/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/animation/Animation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/c;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/c<TT;>;"
    .local p1, "container":Landroid/view/View;, "TT;"
    :try_start_0
    const-class v2, Landroid/view/animation/Animation;

    const-string v3, "clone"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 46
    .local v0, "cloneMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 47
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "cloneMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;)V
    .locals 1
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "config"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;
    .param p5, "from"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/c;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/c<TT;>;"
    .local p1, "container":Landroid/view/View;, "TT;"
    invoke-virtual {p0, p1, p3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/c;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 32
    invoke-virtual {p4}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->b()Landroid/view/animation/Animation;

    move-result-object v0

    .line 33
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/c;->a(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 36
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/c;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/c<TT;>;"
    .local p1, "container":Landroid/view/View;, "TT;"
    invoke-virtual {p0, p1, p3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/c;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 41
    return-void
.end method
