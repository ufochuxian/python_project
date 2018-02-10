.class public Lcom/jiliguala/niuwa/common/util/xutils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/util/xutils/task/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/xutils/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

.field private f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->a:Ljava/lang/Object;

    .line 47
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->b:Z

    .line 48
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->c:Z

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->d:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->d:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    .line 65
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;
    .param p3, "memoryCachePercent"    # F

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(F)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;FI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;
    .param p3, "memoryCachePercent"    # F
    .param p4, "diskCacheSize"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(F)V

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p4}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->d(I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;
    .param p3, "memoryCacheSize"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->c(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;
    .param p3, "memoryCacheSize"    # I
    .param p4, "diskCacheSize"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->c(I)V

    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p4}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->d(I)V

    .line 77
    return-void
.end method

.method static synthetic a(Landroid/view/View;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;)Lcom/jiliguala/niuwa/common/util/xutils/a$a;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a;->b(Landroid/view/View;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;)Lcom/jiliguala/niuwa/common/util/xutils/a$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/a;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private static b(Landroid/view/View;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;)Lcom/jiliguala/niuwa/common/util/xutils/a$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a",
            "<TT;>;)",
            "Lcom/jiliguala/niuwa/common/util/xutils/a$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "container":Landroid/view/View;, "TT;"
    .local p1, "callBack":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a<TT;>;"
    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p1, p0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 96
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 97
    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;

    .line 98
    .local v0, "asyncDrawable":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->a()Lcom/jiliguala/niuwa/common/util/xutils/a$a;

    move-result-object v2

    .line 101
    .end local v0    # "asyncDrawable":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "container":Landroid/view/View;, "TT;"
    .local p2, "callBack":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a<TT;>;"
    const/4 v2, 0x1

    .line 105
    invoke-static {p0, p2}, Lcom/jiliguala/niuwa/common/util/xutils/a;->b(Landroid/view/View;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;)Lcom/jiliguala/niuwa/common/util/xutils/a$a;

    move-result-object v0

    .line 107
    .local v0, "oldLoadTask":Lcom/jiliguala/niuwa/common/util/xutils/a$a;, "Lcom/jiliguala/niuwa/common/util/xutils/a$a<TT;>;"
    if-eqz v0, :cond_1

    .line 108
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a(Lcom/jiliguala/niuwa/common/util/xutils/a$a;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "oldUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 110
    :cond_0
    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a(Z)Z

    .line 115
    .end local v1    # "oldUrl":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return v2
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/util/xutils/a;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/common/util/xutils/a;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/jiliguala/niuwa/common/util/xutils/a;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    .prologue
    .line 335
    if-nez p2, :cond_0

    .line 336
    iget-object p2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->f()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 125
    return-object p0
.end method

.method public a(II)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 2
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    new-instance v1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    invoke-direct {v1, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;)V

    .line 150
    return-object p0
.end method

.method public a(J)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "defaultExpiry"    # J

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(J)V

    .line 190
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap$Config;)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a(Landroid/graphics/Bitmap$Config;)V

    .line 175
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 130
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 120
    return-object p0
.end method

.method public a(Landroid/view/animation/Animation;)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a(Landroid/view/animation/Animation;)V

    .line 160
    return-object p0
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/a/a;)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "fileNameGenerator"    # Lcom/jiliguala/niuwa/common/util/xutils/a/a;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/a;)V

    .line 222
    return-object p0
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "maxSize"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;)V

    .line 155
    return-object p0
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;)V

    .line 227
    return-object p0
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "downloader"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;)V

    .line 185
    return-object p0
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 0
    .param p1, "displayConfig"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    .line 180
    return-object p0
.end method

.method public a(Z)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "autoRotation"    # Z

    .prologue
    .line 164
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a(Z)V

    .line 165
    return-object p0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->p()V

    .line 298
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/view/View;, "TT;"
    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a;->a(Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;)V

    .line 232
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)V
    .locals 1
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "displayConfig"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "container":Landroid/view/View;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a;->a(Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;)V

    .line 236
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;)V
    .locals 19
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "displayConfig"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "container":Landroid/view/View;, "TT;"
    .local p4, "callBack":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a<TT;>;"
    if-nez p1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearAnimation()V

    .line 251
    if-nez p4, :cond_2

    .line 252
    new-instance p4, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/c;

    .end local p4    # "callBack":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a<TT;>;"
    invoke-direct/range {p4 .. p4}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/c;-><init>()V

    .line 255
    .restart local p4    # "callBack":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a<TT;>;"
    :cond_2
    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_4

    .line 256
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->j()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    move-result-object p3

    .line 260
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    move-result-object v18

    .line 261
    .local v18, "size":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;
    invoke-virtual/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->a()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->b()I

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b;->a(Landroid/view/View;II)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;)V

    .line 263
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->a(Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)V

    .line 265
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 266
    invoke-virtual/range {p3 .. p3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 271
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->f()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 273
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_6

    .line 274
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->b(Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)V

    .line 275
    sget-object v9, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;->MEMORY_CACHE:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;)V

    goto :goto_0

    .line 276
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a;->b(Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 278
    new-instance v8, Lcom/jiliguala/niuwa/common/util/xutils/a$a;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/a;Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;)V

    .line 281
    .local v8, "loadTask":Lcom/jiliguala/niuwa/common/util/xutils/a$a;, "Lcom/jiliguala/niuwa/common/util/xutils/a$a<TT;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->j()Lcom/jiliguala/niuwa/common/util/xutils/task/c;

    move-result-object v16

    .line 282
    .local v16, "executor":Lcom/jiliguala/niuwa/common/util/xutils/task/c;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 283
    .local v15, "diskCacheFile":Ljava/io/File;
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v14, 0x1

    .line 284
    .local v14, "diskCacheExist":Z
    :goto_1
    if-eqz v14, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/common/util/xutils/task/c;->b()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->k()Lcom/jiliguala/niuwa/common/util/xutils/task/c;

    move-result-object v16

    .line 288
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 289
    .local v17, "loadingDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v4, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;

    move-object/from16 v0, v17

    invoke-direct {v4, v0, v8}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;-><init>(Landroid/graphics/drawable/Drawable;Lcom/jiliguala/niuwa/common/util/xutils/a$a;)V

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 291
    invoke-virtual/range {p3 .. p3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->i()Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a(Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;)V

    .line 292
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v4}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    goto/16 :goto_0

    .line 283
    .end local v14    # "diskCacheExist":Z
    .end local v17    # "loadingDrawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    const/4 v14, 0x0

    goto :goto_1
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;)V
    .locals 1
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "container":Landroid/view/View;, "TT;"
    .local p3, "callBack":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jiliguala/niuwa/common/util/xutils/a;->a(Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;)V

    .line 242
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public b(I)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->b(Landroid/graphics/drawable/Drawable;)V

    .line 140
    return-object p0
.end method

.method public b(Landroid/graphics/Bitmap;)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->b(Landroid/graphics/drawable/Drawable;)V

    .line 145
    return-object p0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->b(Landroid/graphics/drawable/Drawable;)V

    .line 135
    return-object p0
.end method

.method public b(Z)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "showOriginal"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->b(Z)V

    .line 170
    return-object p0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->q()V

    .line 302
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->b(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public c(I)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "connectTimeout"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(I)V

    .line 195
    return-object p0
.end method

.method public c(Z)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Z)V

    .line 210
    return-object p0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->r()V

    .line 306
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->c(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public d(I)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "readTimeout"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->b(I)V

    .line 200
    return-object p0
.end method

.method public d(Z)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 214
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->b(Z)V

    .line 215
    return-object p0
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->f()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->s()V

    .line 322
    return-void
.end method

.method public e(I)Lcom/jiliguala/niuwa/common/util/xutils/a;
    .locals 1
    .param p1, "threadPoolSize"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->e(I)V

    .line 205
    return-object p0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->e:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->t()V

    .line 326
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->b:Z

    .line 359
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a;->d()V

    .line 360
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->b:Z

    .line 365
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 367
    monitor-exit v1

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 372
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->b:Z

    .line 373
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->c:Z

    .line 374
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 376
    monitor-exit v1

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->b:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a;->c:Z

    return v0
.end method
