.class public Lcom/github/sahasbhop/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/d/a;


# instance fields
.field private a:Lcom/github/sahasbhop/a/a/c;

.field private b:Landroid/content/Context;

.field private c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/github/sahasbhop/a/a/c;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Lcom/github/sahasbhop/a/a/c;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/github/sahasbhop/a/a/d;->b:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/github/sahasbhop/a/a/d;->c:Landroid/net/Uri;

    .line 30
    iput-object p3, p0, Lcom/github/sahasbhop/a/a/d;->a:Lcom/github/sahasbhop/a/a/c;

    .line 31
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/github/sahasbhop/a/a/d;->a:Lcom/github/sahasbhop/a/a/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 79
    if-nez p2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    sget v1, Lcom/github/sahasbhop/a/d$g;->tag_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "tag":Ljava/lang/Object;
    sget-boolean v1, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "tag: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_2
    sget v1, Lcom/github/sahasbhop/a/d$g;->tag_image:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 86
    invoke-direct {p0}, Lcom/github/sahasbhop/a/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/sahasbhop/a/a/d;->a:Lcom/github/sahasbhop/a/a/c;

    invoke-interface {v1, v3, p1, p2}, Lcom/github/sahasbhop/a/a/c;->a(ZLjava/lang/String;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 41
    if-nez p2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    sget v5, Lcom/github/sahasbhop/a/d$g;->tag_image:I

    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 44
    .local v4, "tag":Ljava/lang/Object;
    sget-boolean v5, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v5, :cond_2

    const-string v5, "tag: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_2
    if-eqz v4, :cond_3

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "actualUri":Ljava/lang/String;
    iget-object v5, p0, Lcom/github/sahasbhop/a/a/d;->b:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/github/sahasbhop/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 51
    .local v3, "pngFile":Ljava/io/File;
    if-nez v3, :cond_4

    .line 52
    sget-boolean v5, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v5, :cond_3

    const-string v5, "Can\'t locate the file!!! %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lcom/github/sahasbhop/flog/FLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .end local v0    # "actualUri":Ljava/lang/String;
    .end local v3    # "pngFile":Ljava/io/File;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/github/sahasbhop/a/a/d;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/github/sahasbhop/a/a/d;->a:Lcom/github/sahasbhop/a/a/c;

    invoke-interface {v5, v8, p1, p2}, Lcom/github/sahasbhop/a/a/c;->a(ZLjava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 54
    .restart local v0    # "actualUri":Ljava/lang/String;
    .restart local v3    # "pngFile":Ljava/io/File;
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 55
    invoke-static {v3}, Lcom/github/sahasbhop/a/a/f;->b(Ljava/io/File;)Z

    move-result v2

    .line 57
    .local v2, "isApng":Z
    if-eqz v2, :cond_6

    .line 58
    sget-boolean v5, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v5, :cond_5

    const-string v5, "Setup apng drawable"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :cond_5
    new-instance v1, Lcom/github/sahasbhop/a/a;

    iget-object v5, p0, Lcom/github/sahasbhop/a/a/d;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, p3, v6, p1}, Lcom/github/sahasbhop/a/a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;)V

    .local v1, "drawable":Lcom/github/sahasbhop/a/a;
    move-object v5, p2

    .line 60
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .end local v1    # "drawable":Lcom/github/sahasbhop/a/a;
    :cond_6
    move-object v5, p2

    .line 62
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 66
    .end local v2    # "isApng":Z
    :cond_7
    sget-boolean v5, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v5, :cond_8

    const-string v5, "Clear cache and reload"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_8
    invoke-static {}, Lcom/github/sahasbhop/a/b;->a()Lcom/github/sahasbhop/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/sahasbhop/a/b;->d()Lcom/nostra13/universalimageloader/a/b/c;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/nostra13/universalimageloader/b/e;->c(Ljava/lang/String;Lcom/nostra13/universalimageloader/a/b/c;)V

    .line 68
    invoke-static {}, Lcom/github/sahasbhop/a/b;->a()Lcom/github/sahasbhop/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/sahasbhop/a/b;->g()Lcom/nostra13/universalimageloader/a/a/a;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/nostra13/universalimageloader/b/a;->b(Ljava/lang/String;Lcom/nostra13/universalimageloader/a/a/a;)Z

    .line 70
    invoke-static {}, Lcom/github/sahasbhop/a/b;->a()Lcom/github/sahasbhop/a/b;

    move-result-object v6

    move-object v5, p2

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v6, v0, v5, p0}, Lcom/github/sahasbhop/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/d/a;)V

    goto :goto_1
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 4
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    const/4 v3, 0x0

    .line 91
    if-nez p2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    sget v1, Lcom/github/sahasbhop/a/d$g;->tag_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "tag":Ljava/lang/Object;
    sget-boolean v1, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "tag: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_2
    sget v1, Lcom/github/sahasbhop/a/d$g;->tag_image:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 98
    invoke-direct {p0}, Lcom/github/sahasbhop/a/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/sahasbhop/a/a/d;->a:Lcom/github/sahasbhop/a/a/c;

    invoke-interface {v1, v3, p1, p2}, Lcom/github/sahasbhop/a/a/c;->a(ZLjava/lang/String;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 35
    if-nez p2, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    sget v0, Lcom/github/sahasbhop/a/d$g;->tag_image:I

    iget-object v1, p0, Lcom/github/sahasbhop/a/a/d;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method
