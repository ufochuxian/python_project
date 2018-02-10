.class public Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/Bitmap$Config;

.field private h:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;

.field private i:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->e:Z

    .line 33
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->f:Z

    .line 34
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->g:Landroid/graphics/Bitmap$Config;

    .line 40
    return-void
.end method


# virtual methods
.method public a()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    if-nez v0, :cond_0

    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap$Config;)V
    .locals 0
    .param p1, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->g:Landroid/graphics/Bitmap$Config;

    .line 96
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "loadingDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->c:Landroid/graphics/drawable/Drawable;

    .line 64
    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->b:Landroid/view/animation/Animation;

    .line 56
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;)V
    .locals 0
    .param p1, "bitmapMaxSize"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    .line 48
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;)V
    .locals 0
    .param p1, "bitmapFactory"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->h:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;

    .line 104
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;)V
    .locals 0
    .param p1, "priority"    # Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->i:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    .line 112
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "autoRotation"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->e:Z

    .line 80
    return-void
.end method

.method public b()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->b:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "loadFailedDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->d:Landroid/graphics/drawable/Drawable;

    .line 72
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "showOriginal"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->f:Z

    .line 88
    return-void
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->f:Z

    return v0
.end method

.method public g()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->g:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public h()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->h:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;

    return-object v0
.end method

.method public i()Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->i:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    return-object v0
.end method

.method public j()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;-><init>()V

    .line 121
    .local v0, "config":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    iput-object v1, v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    .line 122
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->b:Landroid/view/animation/Animation;

    iput-object v1, v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->b:Landroid/view/animation/Animation;

    .line 123
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->c:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->c:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->d:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->d:Landroid/graphics/drawable/Drawable;

    .line 125
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->e:Z

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->e:Z

    .line 126
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->f:Z

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->f:Z

    .line 127
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->g:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->g:Landroid/graphics/Bitmap$Config;

    .line 128
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->h:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;

    iput-object v1, v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->h:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;

    .line 129
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->i:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    iput-object v1, v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->i:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    .line 130
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->h:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->h:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
